; Auto-generated. Do not edit!


(cl:in-package soc_msg_and_serv-srv)


;//! \htmlinclude segment_and_classify-request.msg.html

(cl:defclass <segment_and_classify-request> (roslisp-msg-protocol:ros-message)
  ((cloud
    :reader cloud
    :initarg :cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass segment_and_classify-request (<segment_and_classify-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <segment_and_classify-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'segment_and_classify-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name soc_msg_and_serv-srv:<segment_and_classify-request> is deprecated: use soc_msg_and_serv-srv:segment_and_classify-request instead.")))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <segment_and_classify-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soc_msg_and_serv-srv:cloud-val is deprecated.  Use soc_msg_and_serv-srv:cloud instead.")
  (cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <segment_and_classify-request>) ostream)
  "Serializes a message object of type '<segment_and_classify-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <segment_and_classify-request>) istream)
  "Deserializes a message object of type '<segment_and_classify-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<segment_and_classify-request>)))
  "Returns string type for a service object of type '<segment_and_classify-request>"
  "soc_msg_and_serv/segment_and_classifyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'segment_and_classify-request)))
  "Returns string type for a service object of type 'segment_and_classify-request"
  "soc_msg_and_serv/segment_and_classifyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<segment_and_classify-request>)))
  "Returns md5sum for a message object of type '<segment_and_classify-request>"
  "ba1a61e6bd27f094c2048ad9a6c22150")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'segment_and_classify-request)))
  "Returns md5sum for a message object of type 'segment_and_classify-request"
  "ba1a61e6bd27f094c2048ad9a6c22150")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<segment_and_classify-request>)))
  "Returns full string definition for message of type '<segment_and_classify-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'segment_and_classify-request)))
  "Returns full string definition for message of type 'segment_and_classify-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <segment_and_classify-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <segment_and_classify-request>))
  "Converts a ROS message object to a list"
  (cl:list 'segment_and_classify-request
    (cl:cons ':cloud (cloud msg))
))
;//! \htmlinclude segment_and_classify-response.msg.html

(cl:defclass <segment_and_classify-response> (roslisp-msg-protocol:ros-message)
  ((categories_found
    :reader categories_found
    :initarg :categories_found
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String))))
)

(cl:defclass segment_and_classify-response (<segment_and_classify-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <segment_and_classify-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'segment_and_classify-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name soc_msg_and_serv-srv:<segment_and_classify-response> is deprecated: use soc_msg_and_serv-srv:segment_and_classify-response instead.")))

(cl:ensure-generic-function 'categories_found-val :lambda-list '(m))
(cl:defmethod categories_found-val ((m <segment_and_classify-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soc_msg_and_serv-srv:categories_found-val is deprecated.  Use soc_msg_and_serv-srv:categories_found instead.")
  (categories_found m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <segment_and_classify-response>) ostream)
  "Serializes a message object of type '<segment_and_classify-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'categories_found))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'categories_found))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <segment_and_classify-response>) istream)
  "Deserializes a message object of type '<segment_and_classify-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'categories_found) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'categories_found)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<segment_and_classify-response>)))
  "Returns string type for a service object of type '<segment_and_classify-response>"
  "soc_msg_and_serv/segment_and_classifyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'segment_and_classify-response)))
  "Returns string type for a service object of type 'segment_and_classify-response"
  "soc_msg_and_serv/segment_and_classifyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<segment_and_classify-response>)))
  "Returns md5sum for a message object of type '<segment_and_classify-response>"
  "ba1a61e6bd27f094c2048ad9a6c22150")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'segment_and_classify-response)))
  "Returns md5sum for a message object of type 'segment_and_classify-response"
  "ba1a61e6bd27f094c2048ad9a6c22150")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<segment_and_classify-response>)))
  "Returns full string definition for message of type '<segment_and_classify-response>"
  (cl:format cl:nil "std_msgs/String[] categories_found~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'segment_and_classify-response)))
  "Returns full string definition for message of type 'segment_and_classify-response"
  (cl:format cl:nil "std_msgs/String[] categories_found~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <segment_and_classify-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'categories_found) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <segment_and_classify-response>))
  "Converts a ROS message object to a list"
  (cl:list 'segment_and_classify-response
    (cl:cons ':categories_found (categories_found msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'segment_and_classify)))
  'segment_and_classify-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'segment_and_classify)))
  'segment_and_classify-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'segment_and_classify)))
  "Returns string type for a service object of type '<segment_and_classify>"
  "soc_msg_and_serv/segment_and_classify")