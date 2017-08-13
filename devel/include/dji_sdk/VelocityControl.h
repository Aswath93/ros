// Generated by gencpp from file dji_sdk/VelocityControl.msg
// DO NOT EDIT!


#ifndef DJI_SDK_MESSAGE_VELOCITYCONTROL_H
#define DJI_SDK_MESSAGE_VELOCITYCONTROL_H

#include <ros/service_traits.h>


#include <dji_sdk/VelocityControlRequest.h>
#include <dji_sdk/VelocityControlResponse.h>


namespace dji_sdk
{

struct VelocityControl
{

typedef VelocityControlRequest Request;
typedef VelocityControlResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct VelocityControl
} // namespace dji_sdk


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dji_sdk::VelocityControl > {
  static const char* value()
  {
    return "6984cb35c6197216fa18c628573ee383";
  }

  static const char* value(const ::dji_sdk::VelocityControl&) { return value(); }
};

template<>
struct DataType< ::dji_sdk::VelocityControl > {
  static const char* value()
  {
    return "dji_sdk/VelocityControl";
  }

  static const char* value(const ::dji_sdk::VelocityControl&) { return value(); }
};


// service_traits::MD5Sum< ::dji_sdk::VelocityControlRequest> should match 
// service_traits::MD5Sum< ::dji_sdk::VelocityControl > 
template<>
struct MD5Sum< ::dji_sdk::VelocityControlRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dji_sdk::VelocityControl >::value();
  }
  static const char* value(const ::dji_sdk::VelocityControlRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dji_sdk::VelocityControlRequest> should match 
// service_traits::DataType< ::dji_sdk::VelocityControl > 
template<>
struct DataType< ::dji_sdk::VelocityControlRequest>
{
  static const char* value()
  {
    return DataType< ::dji_sdk::VelocityControl >::value();
  }
  static const char* value(const ::dji_sdk::VelocityControlRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dji_sdk::VelocityControlResponse> should match 
// service_traits::MD5Sum< ::dji_sdk::VelocityControl > 
template<>
struct MD5Sum< ::dji_sdk::VelocityControlResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dji_sdk::VelocityControl >::value();
  }
  static const char* value(const ::dji_sdk::VelocityControlResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dji_sdk::VelocityControlResponse> should match 
// service_traits::DataType< ::dji_sdk::VelocityControl > 
template<>
struct DataType< ::dji_sdk::VelocityControlResponse>
{
  static const char* value()
  {
    return DataType< ::dji_sdk::VelocityControl >::value();
  }
  static const char* value(const ::dji_sdk::VelocityControlResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DJI_SDK_MESSAGE_VELOCITYCONTROL_H