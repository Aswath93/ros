// Generated by gencpp from file dji_sdk/MessageFrequencyControlRequest.msg
// DO NOT EDIT!


#ifndef DJI_SDK_MESSAGE_MESSAGEFREQUENCYCONTROLREQUEST_H
#define DJI_SDK_MESSAGE_MESSAGEFREQUENCYCONTROLREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dji_sdk
{
template <class ContainerAllocator>
struct MessageFrequencyControlRequest_
{
  typedef MessageFrequencyControlRequest_<ContainerAllocator> Type;

  MessageFrequencyControlRequest_()
    : frequency()  {
      frequency.assign(0);
  }
  MessageFrequencyControlRequest_(const ContainerAllocator& _alloc)
    : frequency()  {
  (void)_alloc;
      frequency.assign(0);
  }



   typedef boost::array<uint8_t, 16>  _frequency_type;
  _frequency_type frequency;




  typedef boost::shared_ptr< ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MessageFrequencyControlRequest_

typedef ::dji_sdk::MessageFrequencyControlRequest_<std::allocator<void> > MessageFrequencyControlRequest;

typedef boost::shared_ptr< ::dji_sdk::MessageFrequencyControlRequest > MessageFrequencyControlRequestPtr;
typedef boost::shared_ptr< ::dji_sdk::MessageFrequencyControlRequest const> MessageFrequencyControlRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dji_sdk

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'dji_sdk': ['/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg', '/home/aswath/ros/devel/share/dji_sdk/msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6f27a0697a2efd8da664f239ba301c7c";
  }

  static const char* value(const ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6f27a0697a2efd8dULL;
  static const uint64_t static_value2 = 0xa664f239ba301c7cULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_sdk/MessageFrequencyControlRequest";
  }

  static const char* value(const ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8[16] frequency\n\
";
  }

  static const char* value(const ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.frequency);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MessageFrequencyControlRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_sdk::MessageFrequencyControlRequest_<ContainerAllocator>& v)
  {
    s << indent << "frequency[]" << std::endl;
    for (size_t i = 0; i < v.frequency.size(); ++i)
    {
      s << indent << "  frequency[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.frequency[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_SDK_MESSAGE_MESSAGEFREQUENCYCONTROLREQUEST_H
