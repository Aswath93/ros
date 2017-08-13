; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude obs_msg.msg.html

(cl:defclass <obs_msg> (roslisp-msg-protocol:ros-message)
  ((is_obs
    :reader is_obs
    :initarg :is_obs
    :type cl:boolean
    :initform cl:nil)
   (sensor_1
    :reader sensor_1
    :initarg :sensor_1
    :type cl:boolean
    :initform cl:nil)
   (sensor_2
    :reader sensor_2
    :initarg :sensor_2
    :type cl:boolean
    :initform cl:nil)
   (sensor_3
    :reader sensor_3
    :initarg :sensor_3
    :type cl:boolean
    :initform cl:nil)
   (sensor_4
    :reader sensor_4
    :initarg :sensor_4
    :type cl:boolean
    :initform cl:nil)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass obs_msg (<obs_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <obs_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'obs_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<obs_msg> is deprecated: use dji_sdk-msg:obs_msg instead.")))

(cl:ensure-generic-function 'is_obs-val :lambda-list '(m))
(cl:defmethod is_obs-val ((m <obs_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:is_obs-val is deprecated.  Use dji_sdk-msg:is_obs instead.")
  (is_obs m))

(cl:ensure-generic-function 'sensor_1-val :lambda-list '(m))
(cl:defmethod sensor_1-val ((m <obs_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:sensor_1-val is deprecated.  Use dji_sdk-msg:sensor_1 instead.")
  (sensor_1 m))

(cl:ensure-generic-function 'sensor_2-val :lambda-list '(m))
(cl:defmethod sensor_2-val ((m <obs_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:sensor_2-val is deprecated.  Use dji_sdk-msg:sensor_2 instead.")
  (sensor_2 m))

(cl:ensure-generic-function 'sensor_3-val :lambda-list '(m))
(cl:defmethod sensor_3-val ((m <obs_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:sensor_3-val is deprecated.  Use dji_sdk-msg:sensor_3 instead.")
  (sensor_3 m))

(cl:ensure-generic-function 'sensor_4-val :lambda-list '(m))
(cl:defmethod sensor_4-val ((m <obs_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:sensor_4-val is deprecated.  Use dji_sdk-msg:sensor_4 instead.")
  (sensor_4 m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <obs_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:altitude-val is deprecated.  Use dji_sdk-msg:altitude instead.")
  (altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <obs_msg>) ostream)
  "Serializes a message object of type '<obs_msg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_obs) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sensor_1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sensor_2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sensor_3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sensor_4) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <obs_msg>) istream)
  "Deserializes a message object of type '<obs_msg>"
    (cl:setf (cl:slot-value msg 'is_obs) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sensor_1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sensor_2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sensor_3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sensor_4) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<obs_msg>)))
  "Returns string type for a message object of type '<obs_msg>"
  "dji_sdk/obs_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'obs_msg)))
  "Returns string type for a message object of type 'obs_msg"
  "dji_sdk/obs_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<obs_msg>)))
  "Returns md5sum for a message object of type '<obs_msg>"
  "1a90dcc1ce49971288e81168408c19f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'obs_msg)))
  "Returns md5sum for a message object of type 'obs_msg"
  "1a90dcc1ce49971288e81168408c19f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<obs_msg>)))
  "Returns full string definition for message of type '<obs_msg>"
  (cl:format cl:nil "bool is_obs~%bool sensor_1~%bool sensor_2~%bool sensor_3~%bool sensor_4~%float32 altitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'obs_msg)))
  "Returns full string definition for message of type 'obs_msg"
  (cl:format cl:nil "bool is_obs~%bool sensor_1~%bool sensor_2~%bool sensor_3~%bool sensor_4~%float32 altitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <obs_msg>))
  (cl:+ 0
     1
     1
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <obs_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'obs_msg
    (cl:cons ':is_obs (is_obs msg))
    (cl:cons ':sensor_1 (sensor_1 msg))
    (cl:cons ':sensor_2 (sensor_2 msg))
    (cl:cons ':sensor_3 (sensor_3 msg))
    (cl:cons ':sensor_4 (sensor_4 msg))
    (cl:cons ':altitude (altitude msg))
))
