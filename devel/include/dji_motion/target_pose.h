// Generated by gencpp from file dji_motion/target_pose.msg
// DO NOT EDIT!


#ifndef DJI_MOTION_MESSAGE_TARGET_POSE_H
#define DJI_MOTION_MESSAGE_TARGET_POSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dji_motion
{
template <class ContainerAllocator>
struct target_pose_
{
  typedef target_pose_<ContainerAllocator> Type;

  target_pose_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , cmd(0.0)
    , yaw(0.0)  {
    }
  target_pose_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , cmd(0.0)
    , yaw(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;

   typedef float _cmd_type;
  _cmd_type cmd;

   typedef float _yaw_type;
  _yaw_type yaw;




  typedef boost::shared_ptr< ::dji_motion::target_pose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_motion::target_pose_<ContainerAllocator> const> ConstPtr;

}; // struct target_pose_

typedef ::dji_motion::target_pose_<std::allocator<void> > target_pose;

typedef boost::shared_ptr< ::dji_motion::target_pose > target_posePtr;
typedef boost::shared_ptr< ::dji_motion::target_pose const> target_poseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_motion::target_pose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_motion::target_pose_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dji_motion

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'dji_motion': ['/home/aswath/ros/src/dji_motion/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dji_motion::target_pose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_motion::target_pose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_motion::target_pose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_motion::target_pose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_motion::target_pose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_motion::target_pose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_motion::target_pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d7f8c642c68b11d587f65eb82c9749b5";
  }

  static const char* value(const ::dji_motion::target_pose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd7f8c642c68b11d5ULL;
  static const uint64_t static_value2 = 0x87f65eb82c9749b5ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_motion::target_pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_motion/target_pose";
  }

  static const char* value(const ::dji_motion::target_pose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_motion::target_pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n\
float32 y\n\
float32 z\n\
float32 cmd\n\
float32 yaw\n\
";
  }

  static const char* value(const ::dji_motion::target_pose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_motion::target_pose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.cmd);
      stream.next(m.yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct target_pose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_motion::target_pose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_motion::target_pose_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
    s << indent << "cmd: ";
    Printer<float>::stream(s, indent + "  ", v.cmd);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_MOTION_MESSAGE_TARGET_POSE_H
