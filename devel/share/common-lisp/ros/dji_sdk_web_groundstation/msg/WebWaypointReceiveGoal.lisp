; Auto-generated. Do not edit!


(cl:in-package dji_sdk_web_groundstation-msg)


;//! \htmlinclude WebWaypointReceiveGoal.msg.html

(cl:defclass <WebWaypointReceiveGoal> (roslisp-msg-protocol:ros-message)
  ((waypoint_list
    :reader waypoint_list
    :initarg :waypoint_list
    :type dji_sdk-msg:WaypointList
    :initform (cl:make-instance 'dji_sdk-msg:WaypointList))
   (tid
    :reader tid
    :initarg :tid
    :type cl:integer
    :initform 0))
)

(cl:defclass WebWaypointReceiveGoal (<WebWaypointReceiveGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WebWaypointReceiveGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WebWaypointReceiveGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk_web_groundstation-msg:<WebWaypointReceiveGoal> is deprecated: use dji_sdk_web_groundstation-msg:WebWaypointReceiveGoal instead.")))

(cl:ensure-generic-function 'waypoint_list-val :lambda-list '(m))
(cl:defmethod waypoint_list-val ((m <WebWaypointReceiveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk_web_groundstation-msg:waypoint_list-val is deprecated.  Use dji_sdk_web_groundstation-msg:waypoint_list instead.")
  (waypoint_list m))

(cl:ensure-generic-function 'tid-val :lambda-list '(m))
(cl:defmethod tid-val ((m <WebWaypointReceiveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk_web_groundstation-msg:tid-val is deprecated.  Use dji_sdk_web_groundstation-msg:tid instead.")
  (tid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WebWaypointReceiveGoal>) ostream)
  "Serializes a message object of type '<WebWaypointReceiveGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint_list) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'tid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'tid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'tid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'tid)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WebWaypointReceiveGoal>) istream)
  "Deserializes a message object of type '<WebWaypointReceiveGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint_list) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'tid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'tid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'tid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'tid)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WebWaypointReceiveGoal>)))
  "Returns string type for a message object of type '<WebWaypointReceiveGoal>"
  "dji_sdk_web_groundstation/WebWaypointReceiveGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WebWaypointReceiveGoal)))
  "Returns string type for a message object of type 'WebWaypointReceiveGoal"
  "dji_sdk_web_groundstation/WebWaypointReceiveGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WebWaypointReceiveGoal>)))
  "Returns md5sum for a message object of type '<WebWaypointReceiveGoal>"
  "6ec8abdbbe8f44dcf91e84ea5b8df4d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WebWaypointReceiveGoal)))
  "Returns md5sum for a message object of type 'WebWaypointReceiveGoal"
  "6ec8abdbbe8f44dcf91e84ea5b8df4d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WebWaypointReceiveGoal>)))
  "Returns full string definition for message of type '<WebWaypointReceiveGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%dji_sdk/WaypointList waypoint_list~%#task id~%uint64 tid~%~%================================================================================~%MSG: dji_sdk/WaypointList~%Waypoint[] waypoint_list~%~%================================================================================~%MSG: dji_sdk/Waypoint~%#latitude is in degree~%float64 latitude~%#longitude is in degree~%float64 longitude~%float32 altitude~%#heading is in [-180,180]~%int16 heading ~%#stay time is in second~%uint16 staytime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WebWaypointReceiveGoal)))
  "Returns full string definition for message of type 'WebWaypointReceiveGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%dji_sdk/WaypointList waypoint_list~%#task id~%uint64 tid~%~%================================================================================~%MSG: dji_sdk/WaypointList~%Waypoint[] waypoint_list~%~%================================================================================~%MSG: dji_sdk/Waypoint~%#latitude is in degree~%float64 latitude~%#longitude is in degree~%float64 longitude~%float32 altitude~%#heading is in [-180,180]~%int16 heading ~%#stay time is in second~%uint16 staytime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WebWaypointReceiveGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint_list))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WebWaypointReceiveGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'WebWaypointReceiveGoal
    (cl:cons ':waypoint_list (waypoint_list msg))
    (cl:cons ':tid (tid msg))
))