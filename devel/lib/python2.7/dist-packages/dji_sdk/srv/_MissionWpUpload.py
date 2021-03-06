# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dji_sdk/MissionWpUploadRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dji_sdk.msg

class MissionWpUploadRequest(genpy.Message):
  _md5sum = "7c965e82a72d204e1e6d1e75389efb89"
  _type = "dji_sdk/MissionWpUploadRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """MissionWaypointTask waypoint_task

================================================================================
MSG: dji_sdk/MissionWaypointTask
float32 velocity_range
float32 idle_velocity
uint8 action_on_finish
uint8 mission_exec_times
uint8 yaw_mode
uint8 trace_mode
uint8 action_on_rc_lost
uint8 gimbal_pitch_mode
MissionWaypoint[] mission_waypoint

================================================================================
MSG: dji_sdk/MissionWaypoint
float64 latitude
float64 longitude
float32 altitude
float32 damping_distance
int16 target_yaw
int16 target_gimbal_pitch
uint8 turn_mode
uint8 has_action
uint16 action_time_limit
MissionWaypointAction waypoint_action

================================================================================
MSG: dji_sdk/MissionWaypointAction
uint8 action_repeat
uint8[15] command_list
int16[15] command_parameter
"""
  __slots__ = ['waypoint_task']
  _slot_types = ['dji_sdk/MissionWaypointTask']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       waypoint_task

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MissionWpUploadRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.waypoint_task is None:
        self.waypoint_task = dji_sdk.msg.MissionWaypointTask()
    else:
      self.waypoint_task = dji_sdk.msg.MissionWaypointTask()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_2f6B.pack(_x.waypoint_task.velocity_range, _x.waypoint_task.idle_velocity, _x.waypoint_task.action_on_finish, _x.waypoint_task.mission_exec_times, _x.waypoint_task.yaw_mode, _x.waypoint_task.trace_mode, _x.waypoint_task.action_on_rc_lost, _x.waypoint_task.gimbal_pitch_mode))
      length = len(self.waypoint_task.mission_waypoint)
      buff.write(_struct_I.pack(length))
      for val1 in self.waypoint_task.mission_waypoint:
        _x = val1
        buff.write(_struct_2d2f2h2BH.pack(_x.latitude, _x.longitude, _x.altitude, _x.damping_distance, _x.target_yaw, _x.target_gimbal_pitch, _x.turn_mode, _x.has_action, _x.action_time_limit))
        _v1 = val1.waypoint_action
        buff.write(_struct_B.pack(_v1.action_repeat))
        _x = _v1.command_list
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_struct_15B.pack(*_x))
        else:
          buff.write(_struct_15s.pack(_x))
        buff.write(_struct_15h.pack(*_v1.command_parameter))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.waypoint_task is None:
        self.waypoint_task = dji_sdk.msg.MissionWaypointTask()
      end = 0
      _x = self
      start = end
      end += 14
      (_x.waypoint_task.velocity_range, _x.waypoint_task.idle_velocity, _x.waypoint_task.action_on_finish, _x.waypoint_task.mission_exec_times, _x.waypoint_task.yaw_mode, _x.waypoint_task.trace_mode, _x.waypoint_task.action_on_rc_lost, _x.waypoint_task.gimbal_pitch_mode,) = _struct_2f6B.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.waypoint_task.mission_waypoint = []
      for i in range(0, length):
        val1 = dji_sdk.msg.MissionWaypoint()
        _x = val1
        start = end
        end += 32
        (_x.latitude, _x.longitude, _x.altitude, _x.damping_distance, _x.target_yaw, _x.target_gimbal_pitch, _x.turn_mode, _x.has_action, _x.action_time_limit,) = _struct_2d2f2h2BH.unpack(str[start:end])
        _v2 = val1.waypoint_action
        start = end
        end += 1
        (_v2.action_repeat,) = _struct_B.unpack(str[start:end])
        start = end
        end += 15
        _v2.command_list = str[start:end]
        start = end
        end += 30
        _v2.command_parameter = _struct_15h.unpack(str[start:end])
        self.waypoint_task.mission_waypoint.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_2f6B.pack(_x.waypoint_task.velocity_range, _x.waypoint_task.idle_velocity, _x.waypoint_task.action_on_finish, _x.waypoint_task.mission_exec_times, _x.waypoint_task.yaw_mode, _x.waypoint_task.trace_mode, _x.waypoint_task.action_on_rc_lost, _x.waypoint_task.gimbal_pitch_mode))
      length = len(self.waypoint_task.mission_waypoint)
      buff.write(_struct_I.pack(length))
      for val1 in self.waypoint_task.mission_waypoint:
        _x = val1
        buff.write(_struct_2d2f2h2BH.pack(_x.latitude, _x.longitude, _x.altitude, _x.damping_distance, _x.target_yaw, _x.target_gimbal_pitch, _x.turn_mode, _x.has_action, _x.action_time_limit))
        _v3 = val1.waypoint_action
        buff.write(_struct_B.pack(_v3.action_repeat))
        _x = _v3.command_list
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_struct_15B.pack(*_x))
        else:
          buff.write(_struct_15s.pack(_x))
        buff.write(_v3.command_parameter.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.waypoint_task is None:
        self.waypoint_task = dji_sdk.msg.MissionWaypointTask()
      end = 0
      _x = self
      start = end
      end += 14
      (_x.waypoint_task.velocity_range, _x.waypoint_task.idle_velocity, _x.waypoint_task.action_on_finish, _x.waypoint_task.mission_exec_times, _x.waypoint_task.yaw_mode, _x.waypoint_task.trace_mode, _x.waypoint_task.action_on_rc_lost, _x.waypoint_task.gimbal_pitch_mode,) = _struct_2f6B.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.waypoint_task.mission_waypoint = []
      for i in range(0, length):
        val1 = dji_sdk.msg.MissionWaypoint()
        _x = val1
        start = end
        end += 32
        (_x.latitude, _x.longitude, _x.altitude, _x.damping_distance, _x.target_yaw, _x.target_gimbal_pitch, _x.turn_mode, _x.has_action, _x.action_time_limit,) = _struct_2d2f2h2BH.unpack(str[start:end])
        _v4 = val1.waypoint_action
        start = end
        end += 1
        (_v4.action_repeat,) = _struct_B.unpack(str[start:end])
        start = end
        end += 15
        _v4.command_list = str[start:end]
        start = end
        end += 30
        _v4.command_parameter = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=15)
        self.waypoint_task.mission_waypoint.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_2d2f2h2BH = struct.Struct("<2d2f2h2BH")
_struct_15s = struct.Struct("<15s")
_struct_B = struct.Struct("<B")
_struct_15B = struct.Struct("<15B")
_struct_2f6B = struct.Struct("<2f6B")
_struct_15h = struct.Struct("<15h")
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dji_sdk/MissionWpUploadResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MissionWpUploadResponse(genpy.Message):
  _md5sum = "eb13ac1f1354ccecb7941ee8fa2192e8"
  _type = "dji_sdk/MissionWpUploadResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool result

"""
  __slots__ = ['result']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MissionWpUploadResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = False
    else:
      self.result = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_struct_B.pack(self.result))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 1
      (self.result,) = _struct_B.unpack(str[start:end])
      self.result = bool(self.result)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_struct_B.pack(self.result))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 1
      (self.result,) = _struct_B.unpack(str[start:end])
      self.result = bool(self.result)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_B = struct.Struct("<B")
class MissionWpUpload(object):
  _type          = 'dji_sdk/MissionWpUpload'
  _md5sum = 'ce0a38f3621e16d1b7a2d33b72384b5d'
  _request_class  = MissionWpUploadRequest
  _response_class = MissionWpUploadResponse
