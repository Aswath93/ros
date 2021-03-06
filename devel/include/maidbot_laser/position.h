// Generated by gencpp from file maidbot_laser/position.msg
// DO NOT EDIT!


#ifndef MAIDBOT_LASER_MESSAGE_POSITION_H
#define MAIDBOT_LASER_MESSAGE_POSITION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace maidbot_laser
{
template <class ContainerAllocator>
struct position_
{
  typedef position_<ContainerAllocator> Type;

  position_()
    : x(0.0)
    , y(0.0)
    , angle(0)  {
    }
  position_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , angle(0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef int32_t _angle_type;
  _angle_type angle;




  typedef boost::shared_ptr< ::maidbot_laser::position_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::maidbot_laser::position_<ContainerAllocator> const> ConstPtr;

}; // struct position_

typedef ::maidbot_laser::position_<std::allocator<void> > position;

typedef boost::shared_ptr< ::maidbot_laser::position > positionPtr;
typedef boost::shared_ptr< ::maidbot_laser::position const> positionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::maidbot_laser::position_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::maidbot_laser::position_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace maidbot_laser

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'maidbot_laser': ['/home/aswath/ros/src/maidbot_laser/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::maidbot_laser::position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::maidbot_laser::position_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::maidbot_laser::position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::maidbot_laser::position_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::maidbot_laser::position_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::maidbot_laser::position_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::maidbot_laser::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "14f642d00ecefd6358ddac5b9ef2f4e8";
  }

  static const char* value(const ::maidbot_laser::position_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x14f642d00ecefd63ULL;
  static const uint64_t static_value2 = 0x58ddac5b9ef2f4e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::maidbot_laser::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "maidbot_laser/position";
  }

  static const char* value(const ::maidbot_laser::position_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::maidbot_laser::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n\
float32 y\n\
int32 angle\n\
";
  }

  static const char* value(const ::maidbot_laser::position_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::maidbot_laser::position_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct position_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::maidbot_laser::position_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::maidbot_laser::position_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "angle: ";
    Printer<int32_t>::stream(s, indent + "  ", v.angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAIDBOT_LASER_MESSAGE_POSITION_H
