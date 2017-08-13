#include <ros/ros.h>
#include <stdio.h>
#include <dji_motion/target_pose.h>
#include <std_msgs/Bool.h>
#include <sensor_msgs/Range.h>
#include <vector>

class Communicator
{
public:
	Communicator();
    Communicator(ros::NodeHandle nh);
    Communicator(ros::NodeHandle n,std::vector<float> ht);
    ~Communicator();
    void start();
    void takeoff();
    void land();
    void get_input();
    void set_waypoints();


private:
    bool is_target = false;
    bool first_flag = true;
    float min_thresh = 0.8;
    float max_thresh = 2;
    float fwd_dist;
    float corridor_lower_limit = 0.1;
    float corridor_upper_limit = -0.1;
    float adjust = 1;
    ros::NodeHandle nh;
    ros::Publisher target_pub = nh.advertise<dji_motion::target_pose>("target_pose",10);
    ros::Subscriber is_target_sub = nh.subscribe<std_msgs::Bool>("is_target",10,&Communicator::is_target_cb,this);
    ros::Subscriber ultrasound_sub = nh.subscribe<sensor_msgs::Range>("ultrasound",10,&Communicator::ultrasound_cb,this);


    std::vector<int> shelf_number;
    std::vector<float> shelf_coords = {0.81,1.2,1.5,1.9};
    float aisle_len = 4.5;
    dji_motion::target_pose target;
    void send_waypoints();
    void go_left();
    void go_right();
    void clear_input();
    void wait_till_target();
    void straighten();
    void is_target_cb(const std_msgs::Bool::ConstPtr& msg);
    void ultrasound_cb(const sensor_msgs::Range::ConstPtr& msg);
    
};

Communicator::Communicator(){}
Communicator::Communicator(ros::NodeHandle n):nh(n){}
Communicator::Communicator(ros::NodeHandle n,std::vector<float> ht):nh(n),shelf_coords(ht){}

Communicator::~Communicator(){}

void Communicator::is_target_cb(const std_msgs::Bool::ConstPtr& msg)
{
	this->is_target = msg->data;
	std::cout<<"[CALLBACK] is target: "<<this->is_target<<std::endl;
}

void Communicator::ultrasound_cb(const sensor_msgs::Range::ConstPtr& msg)
{
	this->fwd_dist = msg->range;
	std::cout<<"fwd distance"<<this->fwd_dist;
}

void Communicator::start()
{	
	this -> get_input();
	this -> takeoff();
	this -> set_waypoints();
	this -> land();
	this -> clear_input();
}

void Communicator::clear_input()
{
	this->shelf_number.clear();
}

void Communicator::get_input()
{	
	int input;
	std::cout << "Enter the length of the aisle\n ";
	std::cin >> this->aisle_len;	
	std::cout << "Enter the index of the shelves to scan separated by spaces\n(enter \"c\" once done)";
	while(std::cin >> input)
	{
		this -> shelf_number.push_back(input);
	}
}

void Communicator::send_waypoints()
{
	this->target_pub.publish(this->target);
	ROS_INFO("target published x: %f\n y: %f\n z: %f\n cmd: %f\n yaw: %f\n",this->target.x,this->target.y ,this->target.z,this->target.cmd,this->target.yaw);
}

void Communicator::straighten()
{
	if(this->fwd_dist > this->min_thresh && this->fwd_dist < this->max_thresh)
	{
		float diff;
		float adjustment;
		if(this->fwd_dist < this->corridor_lower_limit)
		{
			diff = this->corridor_lower_limit - this->fwd_dist;
			adjustment = this->target.x - this->adjust * diff;
			if (adjustment > this->corridor_upper_limit)
			{
				this->target.x = this->corridor_upper_limit;
			}
			else
			{
				this->target.x = adjustment;
			}
			std::cout<<"forward dist :"<<this->fwd_dist<<"\ngetting too close,changing target to move back"<<"\nnew target x:"<<this->target.x<<std::endl;
		}
		else if(this->fwd_dist > this->corridor_upper_limit)
		{			
			diff = this->fwd_dist - this->corridor_upper_limit;
			adjustment = this->target.x + this->adjust * diff;
			if (adjustment < this->corridor_lower_limit)
			{
				this->target.x = this->corridor_lower_limit;
			}
			else
			{
				this->target.x = adjustment;
			}
			std::cout<<"forward dist :"<<this->fwd_dist<<"\ngetting too far,changing target to move forward"<<"\nnew target x:"<<this->target.x<<std::endl;
		}
	}
}



void Communicator::wait_till_target()
{
	ros::Duration(2).sleep();
	// ROS_INFO("sleeping inside wait while loop");
	ros::spinOnce();
	// while this is not the target and this is not the first time inside this loop,wait till you reach the target
	while(!(this->is_target) && !(this->first_flag))
	{
		/////////////////////////////////////////////////////////////////////////
		// check the ultrasonics reding here and send new target necessary here//
		/////////////////////////////////////////////////////////////////////////
		ROS_INFO("inside while");
		//make sure that this sleep doesnot affect the reading frequency of ultrasonics 
		ros::Duration(1).sleep();
		ros::spinOnce();
		this->straighten();
		ROS_INFO("waiting...");
		std::cout<<"first flag"<<this->first_flag<<std::endl;
		std::cout<<"is target"<<this->is_target<<std::endl;
	}
	this -> first_flag = false;
}

void Communicator::go_left()
{
	this->wait_till_target();
	this->target.y = 0;
	this->send_waypoints();
	// ros::Duration(3).sleep();
	
	
	this->wait_till_target();
	this->target.y = this->aisle_len;
	this->send_waypoints();
	this->wait_till_target();
	// ros::Duration(3).sleep();

}

void Communicator::go_right()
{	
	this->wait_till_target();
	this->target.y = this->aisle_len;
	this->send_waypoints();
	// ros::Duration(3).sleep();

	this->wait_till_target();
	this->target.y = 0;
	this->send_waypoints();
	this->wait_till_target();
	// ros::Duration(3).sleep();
}

void Communicator::takeoff()
{
	this->target.cmd = 1;
	this->target.z = 1; 
	this->send_waypoints();
	this->target.cmd = 0;
	ros::Duration(2).sleep();
}

void Communicator::land()
{
	this->target.cmd = 2;
	this->send_waypoints();
	this->target.cmd = 0;	
}

void Communicator::set_waypoints()
{
	// x and yaw are constant
	this -> target.x = 0;
	this -> target.yaw = 0;
	std::cout<<"shelf number size:"<<shelf_number.size()<<"\n";
	for(int i = 0; i < this -> shelf_number.size();i++ )
	{
		this -> target.z = this->shelf_coords.at(shelf_number.at(i)-1);
		ROS_INFO("height set at : %f",this -> target.z);
		if(i%2 == 0)
		{
			this -> go_left();
		}
		else
		{
			this -> go_right();
		}
	}
	ROS_INFO("Done sending waypoints");
}

int main(int argc,char** argv)
{
	std::vector<float> heights;
	for(int i = 1 ; i < argc ;i++)
	{
		heights.push_back(std::atof(argv[i]));
		std::cout << "heights :\n" << std::atof(argv[i]) << std::endl;
	}
	std::cout << "argc is" <<argc;

    ros::init(argc,argv,"send_waypoints");
    ros::NodeHandle n;
    if (argc == 1)
    {
    	ROS_ERROR("No heights received in command line ");
    }  
    Communicator com = Communicator(n,heights);
    //if (argc == 1)
    //{
//    	com = Communicator(n);
    //}
    //else
    //{
    //	com = Communicator(n,heights);
    //}

    // while(ros::ok())
    // {
    	// ros::spinOnce();
    com.start();
    	
    	
// ros::shutdown();
    // }
}
