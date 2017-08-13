# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from opencv_apps/Line.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import opencv_apps.msg

class Line(genpy.Message):
  _md5sum = "a1419010b3fc4549e3f450018363d000"
  _type = "opencv_apps/Line"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """Point2D pt1
Point2D pt2


================================================================================
MSG: opencv_apps/Point2D
float64 x
float64 y


"""
  __slots__ = ['pt1','pt2']
  _slot_types = ['opencv_apps/Point2D','opencv_apps/Point2D']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pt1,pt2

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Line, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.pt1 is None:
        self.pt1 = opencv_apps.msg.Point2D()
      if self.pt2 is None:
        self.pt2 = opencv_apps.msg.Point2D()
    else:
      self.pt1 = opencv_apps.msg.Point2D()
      self.pt2 = opencv_apps.msg.Point2D()

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
      buff.write(_struct_4d.pack(_x.pt1.x, _x.pt1.y, _x.pt2.x, _x.pt2.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.pt1 is None:
        self.pt1 = opencv_apps.msg.Point2D()
      if self.pt2 is None:
        self.pt2 = opencv_apps.msg.Point2D()
      end = 0
      _x = self
      start = end
      end += 32
      (_x.pt1.x, _x.pt1.y, _x.pt2.x, _x.pt2.y,) = _struct_4d.unpack(str[start:end])
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
      buff.write(_struct_4d.pack(_x.pt1.x, _x.pt1.y, _x.pt2.x, _x.pt2.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.pt1 is None:
        self.pt1 = opencv_apps.msg.Point2D()
      if self.pt2 is None:
        self.pt2 = opencv_apps.msg.Point2D()
      end = 0
      _x = self
      start = end
      end += 32
      (_x.pt1.x, _x.pt1.y, _x.pt2.x, _x.pt2.y,) = _struct_4d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_4d = struct.Struct("<4d")
