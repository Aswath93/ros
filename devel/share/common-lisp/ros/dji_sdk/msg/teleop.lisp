; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude teleop.msg.html

(cl:defclass <teleop> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0))
)

(cl:defclass teleop (<teleop>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <teleop>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'teleop)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<teleop> is deprecated: use dji_sdk-msg:teleop instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <teleop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:cmd-val is deprecated.  Use dji_sdk-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <teleop>) ostream)
  "Serializes a message object of type '<teleop>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <teleop>) istream)
  "Deserializes a message object of type '<teleop>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<teleop>)))
  "Returns string type for a message object of type '<teleop>"
  "dji_sdk/teleop")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'teleop)))
  "Returns string type for a message object of type 'teleop"
  "dji_sdk/teleop")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<teleop>)))
  "Returns md5sum for a message object of type '<teleop>"
  "c0d7e98dffa9a31a248d7e1b7dfe0d5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'teleop)))
  "Returns md5sum for a message object of type 'teleop"
  "c0d7e98dffa9a31a248d7e1b7dfe0d5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<teleop>)))
  "Returns full string definition for message of type '<teleop>"
  (cl:format cl:nil "char cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'teleop)))
  "Returns full string definition for message of type 'teleop"
  (cl:format cl:nil "char cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <teleop>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <teleop>))
  "Converts a ROS message object to a list"
  (cl:list 'teleop
    (cl:cons ':cmd (cmd msg))
))
