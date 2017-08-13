#include <ros/ros.h>
#include <stdio.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Twist.h>
#include <tf/transform_datatypes.h>
#include <std_msgs/Bool.h>
#include <ros/time.h>
#include <dji_motion/target_pose.h>
#include <boost/algorithm/string.hpp>
#include <iostream>
#include <string>

class Controller
{
  public:
    Controller(ros::NodeHandle n);
    Controller(ros::NodeHandle n, float target_tolerance, float yaw_tolerance);
    ~Controller();
    std::vector<float> get_state();
    bool is_target();
    void start_controller();
    void takeoff();
    void land();

  private:
    float current_x = 0;
    float current_y = 0;
    float current_z = 0;
    float current_yaw = 0;
    float target_x = 0;
    float target_y = 0;
    float target_z = 1;
    float cmd = 0;
    float target_yaw = 0;
    float x_tolerance;
    float y_tolerance;
    float z_tolerance;
    float yaw_tolerance;
    float max_yaw;
    float max_vel;
    bool current_state_flag = false;
    bool target_flag = false;
    bool set_initial_target = false;
    tf::Quaternion q;
    ros::NodeHandle nh;
	std::vector<double> error;
	// std::vector<double> filtered_error = {0,0,0};
	std::vector<double> error_deriv = {0, 0, 0};
	// std::vector<double> filtered_error_deriv;
	int loop_counter = 0;
	double error_integral = 0.;
	double angle_wrap = 2.0 * 3.14159;
	// double cutoff_f.requency = -1;
	double windup_limit = 1000.;
	double c = 1;
	double tan_filt = 1;
	ros::Duration delta_t;
	ros::Time prev_time;
	float proportional = 0;
	float derivative = 0;
	float integral = 0;
	float Kp = 0.5;
	float Ki = 0.05;
	float Kd = 0.005;
    double control_effort = 0; // output of pid controller

    std::vector<double> error_x = {0, 0, 0};
    std::vector<double> error_y = {0, 0, 0};
    std::vector<double> error_z = {0, 0, 0};
    std::vector<double> error_yaw = {0, 0, 0};

    ros::Publisher vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    ros::Publisher is_target_pub = nh.advertise<std_msgs::Bool>("is_target",10);
    ros::Subscriber state_sub = nh.subscribe<geometry_msgs::PoseStamped>("pose", 10, &Controller::state_callback, this);
    ros::Subscriber target_pose = nh.subscribe<dji_motion::target_pose>("target_pose", 10, &Controller::target_callback, this);
    ros::Publisher debug_pub = nh.advertise<dji_motion::target_pose>("debug_pose",10);

    dji_motion::target_pose debug_pose;
    geometry_msgs::Twist cmd_vel;
    std_msgs::Bool target_reached;
    void set_target_tolerance(float a, float b);
    void target_callback(const dji_motion::target_pose::ConstPtr &msg);
    void get_yaw();
    void state_callback(const geometry_msgs::PoseStamped::ConstPtr &msg);
    float call_PID(std::string x, float plant_state, float setpoint);
    void send_new_cmds();
    void set_zero_vel();
    bool limit_checker(float error, float target);

};

Controller::Controller(ros::NodeHandle n) : nh(n), x_tolerance(0.1),y_tolerance(0.2),z_tolerance(0.1), yaw_tolerance(0.5), max_yaw(5), max_vel(0.2) {}

//sController::Controller(ros::NodeHandle n, float target_tolerance, float yaw_tolerance) : nh(n), target_tolerance(target_tolerance), yaw_tolerance(yaw_tolerance) {}

Controller::~Controller() {}

void Controller::get_yaw()
{
    // converting quaternion to degree
    tf::Matrix3x3 m(this->q);
    double roll, pitch, yaw;
    m.getRPY(roll, pitch, yaw);
    ROS_INFO("yaw is %f", yaw); // converting to radians
    // this->current_yaw = yaw * 3.14 / 180;
    this->current_yaw = yaw;
}

std::vector<float> Controller::get_state()
{
    std::vector<float> a = {this->current_x, this->current_y, this->current_z, this->current_yaw};
    return a;
}

void Controller::target_callback(const dji_motion::target_pose::ConstPtr &msg)
{
    this->target_x = msg->x;
    this->target_y = msg->y;
    this->target_z = msg->z;
    this->cmd = msg->cmd;
    this->target_yaw = msg->yaw;
    if (msg->x != 0 && msg->y != 0 && msg->z != 0)
    {
        bool target_flag = true;
        ROS_INFO("No target Received");
    }
    ROS_INFO("Target received\n x:%f\n y:%f\n z:%f\n yaw:%f\n cmd:%f", this->target_x, this->target_y, this->target_z, this->target_yaw,this->cmd);
    if(this->cmd == 1)
    {
        this->takeoff();
	ROS_INFO("received takeoff");
    }
    else if(this->cmd == 2)
    {
        this->land();
    }
}

void Controller::state_callback(const geometry_msgs::PoseStamped::ConstPtr &msg)
{
    // this->q(msg->orientation.x, msg->orientation.y, msg->orientation.z, msg->orientation.w);
    tf::quaternionMsgToTF(msg->pose.orientation, this->q);
    this->get_yaw();
    this->current_x = msg->pose.position.x;
    this->current_y = msg->pose.position.y;
    this->current_z = msg->pose.position.z;
    if (msg->pose.position.x == 0 && msg->pose.position.y == 0 && msg->pose.position.z == 0)
    {
        this->current_state_flag = true;
        ROS_WARN("SLAM POSE NOT RECEIVED");
    }
    /*else if (!this->set_initial_target)
    {
        this->target_x = this->current_x;
        this->target_y = this->current_y;
        this->target_z = this->current_z;
        this->target_yaw = this->current_yaw;
        this->set_initial_target = true;
        ROS_INFO("initial target set");
    }*/
    //ROS_INFO("Current position is  x:%f\n y:%f\n z:%f\n yaw:%f\n", this->current_x, this->current_y, this->current_z, this->current_yaw);
    this->debug_pose.x = this->current_x;
    this->debug_pose.y = this->current_y;
    this->debug_pose.z = this->current_z;
    this->debug_pose.yaw = this->current_yaw; 
    this->debug_pub.publish(debug_pose);
}

bool Controller::limit_checker(float error, float target)
{
    if (error < target && error > -target)
    {
        // if true the current pose is within limits and no need to compensate
        return true;
    }
    else
    {
        return false;
    }
}

bool Controller::is_target()
{
    // if true the current pose is within limits and no need to compensate
    if (this->limit_checker(this->target_x - this->current_x, this->x_tolerance) && this->limit_checker(this->target_y - this->current_y, this->y_tolerance) && this->limit_checker(this->target_z - this->current_z, this->z_tolerance) && this->limit_checker(this->target_yaw - this->current_yaw, this->yaw_tolerance))
    {
        return true;
    }
    else
    {
        return false;
    }
}

float Controller::call_PID(std::string x, float plant_state, float setpoint)
{
    // ROS_INFO("Inside PID Loop");
    boost::algorithm::to_lower(x);
    //  std::string dir = x;
//    ROS_INFO("the char obtained is %s",x.c_str());


    if (x.compare("x") == 0)
    {
	this->Kp=0.5;
    //    ROS_INFO("X error");
        this->error = this->error_x;
        this->error.at(2) = this->error.at(1);
        this->error.at(1) = this->error.at(0);
        this->error.at(0) = setpoint - plant_state; // Current this->error goes to slot 0
        this->error_x = this->error;
  //      ROS_INFO("this->error x error %f", error.at(0));
        // ROS_INFO("error set");
    }
    else if (x.compare("y") == 0)
    {
	this->Kp=0.3;
      //  ROS_INFO("Y error");
        this->error = this->error_y;
        this->error.at(2) = this->error.at(1);
        this->error.at(1) = this->error.at(0);
        this->error.at(0) = setpoint - plant_state; // Current this->error goes to slot 0
        this->error_y = this->error;
    //    ROS_INFO("this->error y this->error %f", this->error.at(0));

    }
    else if (x.compare("z") == 0)
    {
	this->Kp=0.3;
        //ROS_INFO("z this->error");
        this->error = this->error_z;
        this->error.at(2) = this->error.at(1);
        this->error.at(1) = this->error.at(0);
        this->error.at(0) = setpoint - plant_state; // Current this->error goes to slot 0
        this->error_z = this->error;
      //  ROS_INFO("this->error z this->error %f", this->error.at(0));

    }
    else
    {
        // ROS_INFO("yaw this->error");
        this->error = this->error_yaw;
        this->error.at(2) = this->error.at(1);
        this->error.at(1) = this->error.at(0);
        this->error.at(0) = setpoint - plant_state; // Current this->error goes to slot 0
        this->error_yaw = this->error;
        this->Kp = 0.1;
        //ROS_INFO("this->error yaw this->error %f", this->error.at(0));
    }

    // If the angle_this->error param is true, then address discontinuity in this->error calc.
    // For example, this maintains an angular this->error between -180:180.
    if (x.compare("a") == 0)
    {
        while (this->error.at(0) < -1.0 * this->angle_wrap / 2.0)
        {
            this->error.at(0) += this->angle_wrap;
        }
        while (this->error.at(0) > this->angle_wrap / 2.0)
        {
            this->error.at(0) -= this->angle_wrap;
        }
        // The proportional this->error will flip sign, but the integral this->error
        // won't and the derivative this->error will be poorly defined. So,
        // reset them.
        //ROS_INFO("yaw_this->error : %f", this->error.at(0));
        this->error.at(2) = 0.;
        this->error.at(1) = 0.;
        this->error_integral = 0.;
    }

    // calculate delta_t
    if (!this->prev_time.isZero()) // Not first time through the program
    {
        this->delta_t = ros::Time::now() - this->prev_time;
        this->prev_time = ros::Time::now();
        if (0 == this->delta_t.toSec())
        {
            ROS_ERROR("delta_t is 0, skipping this loop. Possible overloaded cpu at time: %f", ros::Time::now().toSec());
            return 0;
        }
    }
    else
    {
        ROS_INFO("prev_time is 0, doing nothing");
        this->prev_time = ros::Time::now();
        ROS_INFO("prev_time : %f", this->prev_time.toSec());
        return 0;
    }

    // integrate the this->error
    this->error_integral += this->error.at(0) * this->delta_t.toSec();

    // Apply windup limit to limit the size of the integral term
    if (this->error_integral > fabsf(this->windup_limit))
        this->error_integral = fabsf(this->windup_limit);

    if (this->error_integral < -fabsf(this->windup_limit))
        this->error_integral = -fabsf(this->windup_limit);

    // My filter reference was Julius O. Smith III, Intro. to Digital Filters With Audio Applications.
    // if (cutoff_frequency != -1)
    // {
    //     // Check if tan(_) is really small, could cause c = NaN
    //     tan_filt = tan((cutoff_frequency * 6.2832) * delta_t.toSec() / 2);

    //     // Avoid tan(0) ==> NaN
    //     if ((tan_filt <= 0.) && (tan_filt > -0.01))
    //         tan_filt = -0.01;
    //     if ((tan_filt >= 0.) && (tan_filt < 0.01))
    //         tan_filt = 0.01;

    //     c = 1 / tan_filt;
    // }

    // filtered_this->error.at(2) = filtered_this->error.at(1);
    // filtered_this->error.at(1) = filtered_this->error.at(0);
    // filtered_this->error.at(0) = (1 / (1 + c * c + 1.414 * c)) * (this->error.at(2) + 2 * this->error.at(1) + this->error.at(0) - (c * c - 1.414 * c + 1) * filtered_this->error.at(2) - (-2 * c * c + 2) * filtered_this->error.at(1));

    // Take derivative of this->error
    // First the raw, unfiltered data:
    this->error_deriv.at(1) = this->error_deriv.at(0);
    this->error_deriv.at(2) = this->error_deriv.at(1);
    this->error_deriv.at(0) = (this->error.at(0) - this->error.at(1)) / this->delta_t.toSec();

    // filtered_this->error_deriv.at(2) = filtered_this->error_deriv.at(1);
    // filtered_this->error_deriv.at(1) = filtered_this->error_deriv.at(0);

    // if (loop_counter > 2) // Let some data accumulate
    //     filtered_this->error_deriv.at(0) = (1 / (1 + c * c + 1.414 * c)) * (this->error_deriv.at(2) + 2 * this->error_deriv.at(1) + this->error_deriv.at(0) - (c * c - 1.414 * c + 1) * filtered_this->error_deriv.at(2) - (-2 * c * c + 2) * filtered_this->error_deriv.at(1));
    // else
    //     loop_counter++;

    // calculate the control effort
    // proportional = Kp * filtered_this->error.at(0);
    this->proportional = this->Kp * this->error.at(0);
    this->integral = this->Ki * this->error_integral;
    // derivative = Kd * filtered_this->error_deriv.at(0);
    this->derivative = this->Kd * this->error_deriv.at(0);

    this->control_effort = this->proportional + this->integral + this->derivative;
    if (x.compare("a") == 0)
    {
        //ROS_INFO("trimming yaw");
        if (this->control_effort > this->max_yaw)
        {
            this->control_effort = this->max_yaw;
        }
        else if (this->control_effort < -this->max_yaw)
        {
            this->control_effort = -this->max_yaw;
        }
    }
    else
    {
        if (this->control_effort > this->max_vel)
        {
            this->control_effort = this->max_vel;
        }
        else if (this->control_effort < -this->max_vel)
        {
            this->control_effort = -this->max_vel;
        }
    }
    return this->control_effort;
}

void Controller::send_new_cmds()
{
    ///////////////////////////////////////////////////////////////////////////////////////
    // make sure that the velocity is given in the frame of the drone or the ground frame//
    ///////////////////////////////////////////////////////////////////////////////////////

    this->cmd_vel.linear.x = this->call_PID("x", this->current_x, this->target_x);
    this->cmd_vel.linear.y = -(this->call_PID("y", this->current_y, this->target_y));
    this->cmd_vel.linear.z = this->call_PID("z", this->current_z, this->target_z);
    this->cmd_vel.angular.z = -(this->call_PID("a", this->current_yaw, this->target_yaw));
    this->vel_pub.publish(this->cmd_vel);

    //ROS_INFO("New command sent \n X : %f \n Y : %f\n Z : %f\n yaw : %f", this->cmd_vel.linear.x, this->cmd_vel.linear.y, this->cmd_vel.linear.z, this->cmd_vel.angular.z);
    this->set_zero_vel();
}

void Controller::set_zero_vel()
{
    // if the errors are within limits hover
    this->cmd_vel.linear.x = 0;
    this->cmd_vel.linear.y = 0;
    this->cmd_vel.linear.z = 0;
    this->cmd_vel.angular.x= 0;
    this->cmd_vel.angular.y= 0;
    this->cmd_vel.angular.z = 0;
}

void Controller::takeoff()
{
    ROS_INFO("sending take off,inside take off fn");
    this->cmd_vel.linear.x = 0;
    this->cmd_vel.linear.y = 0;
    this->cmd_vel.linear.z = 0;
    this->cmd_vel.angular.x = 1;
    this->cmd_vel.angular.y = 0;
    this->cmd_vel.angular.z = 0;
    this->vel_pub.publish(this->cmd_vel);
    this->set_zero_vel();
    ros::Duration(2).sleep();
    ROS_INFO("sleeping");
}

void Controller::land()
{
    this->cmd_vel.linear.x = 0;
    this->cmd_vel.linear.y = 0;
    this->cmd_vel.linear.z = 0;
    this->cmd_vel.angular.x = 2;
    this->cmd_vel.angular.y = 0;
    this->cmd_vel.angular.z = 0;
    this->vel_pub.publish(this->cmd_vel);
    this->set_zero_vel();
    ros::Duration(2).sleep();
    ROS_INFO("land sleeping");
}

void Controller::start_controller()
{
    if (!this->is_target())
    {
        // call the pid controllers
        this->send_new_cmds();
        this->target_reached.data = false;
	//ROS_INFO("going to target");
    }
    else
    {
        this->target_reached.data = true;
        this->set_zero_vel();
        this->vel_pub.publish(this->cmd_vel);
	ROS_INFO("reached target");
        // ROS_INFO("hovering");
    }
    this->is_target_pub.publish(this->target_reached);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pos_controller");
    ros::NodeHandle n;
    Controller controller(n);
    char* key_cmd = new char[1];
    bool first_entry = true;

    while (ros::ok)
    {
        if(first_entry)
        {
            while(1)
           {
                first_entry = false;
                std::cout<<"enter command\n";
                std::streamsize s_size = 255;
                std::cin.getline(key_cmd,255);
                boost::algorithm::to_lower(key_cmd);
                std::string cmd = std::string(key_cmd);
                if(cmd.compare("t") == 0)
                {
                    controller.takeoff();
                    std::cout<<"taking off\n";
                }
                else if(cmd.compare("l") == 0)
                {
                    controller.land();
                    std::cout<<"landing\n";
                }
                else if(cmd.compare("d") == 0)
                {
                    std::cout<<"starting routine\n";
                    break;
                }
            }
        }
           
        ros::spinOnce();
        controller.start_controller();
    }
    delete key_cmd;
}
