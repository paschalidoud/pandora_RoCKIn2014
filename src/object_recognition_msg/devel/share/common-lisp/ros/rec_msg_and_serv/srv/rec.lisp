; Auto-generated. Do not edit!


(cl:in-package rec_msg_and_serv-srv)


;//! \htmlinclude rec-request.msg.html

(cl:defclass <rec-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass rec-request (<rec-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rec-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rec-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rec_msg_and_serv-srv:<rec-request> is deprecated: use rec_msg_and_serv-srv:rec-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <rec-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rec_msg_and_serv-srv:image-val is deprecated.  Use rec_msg_and_serv-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rec-request>) ostream)
  "Serializes a message object of type '<rec-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rec-request>) istream)
  "Deserializes a message object of type '<rec-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rec-request>)))
  "Returns string type for a service object of type '<rec-request>"
  "rec_msg_and_serv/recRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rec-request)))
  "Returns string type for a service object of type 'rec-request"
  "rec_msg_and_serv/recRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rec-request>)))
  "Returns md5sum for a message object of type '<rec-request>"
  "2c4745a1274bef7c9fa1e4e9500ac492")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rec-request)))
  "Returns md5sum for a message object of type 'rec-request"
  "2c4745a1274bef7c9fa1e4e9500ac492")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rec-request>)))
  "Returns full string definition for message of type '<rec-request>"
  (cl:format cl:nil "sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rec-request)))
  "Returns full string definition for message of type 'rec-request"
  (cl:format cl:nil "sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rec-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rec-request>))
  "Converts a ROS message object to a list"
  (cl:list 'rec-request
    (cl:cons ':image (image msg))
))
;//! \htmlinclude rec-response.msg.html

(cl:defclass <rec-response> (roslisp-msg-protocol:ros-message)
  ((models_found
    :reader models_found
    :initarg :models_found
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (confidences_found
    :reader confidences_found
    :initarg :confidences_found
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (poses_found
    :reader poses_found
    :initarg :poses_found
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass rec-response (<rec-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rec-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rec-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rec_msg_and_serv-srv:<rec-response> is deprecated: use rec_msg_and_serv-srv:rec-response instead.")))

(cl:ensure-generic-function 'models_found-val :lambda-list '(m))
(cl:defmethod models_found-val ((m <rec-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rec_msg_and_serv-srv:models_found-val is deprecated.  Use rec_msg_and_serv-srv:models_found instead.")
  (models_found m))

(cl:ensure-generic-function 'confidences_found-val :lambda-list '(m))
(cl:defmethod confidences_found-val ((m <rec-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rec_msg_and_serv-srv:confidences_found-val is deprecated.  Use rec_msg_and_serv-srv:confidences_found instead.")
  (confidences_found m))

(cl:ensure-generic-function 'poses_found-val :lambda-list '(m))
(cl:defmethod poses_found-val ((m <rec-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rec_msg_and_serv-srv:poses_found-val is deprecated.  Use rec_msg_and_serv-srv:poses_found instead.")
  (poses_found m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rec-response>) ostream)
  "Serializes a message object of type '<rec-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'models_found))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'models_found))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'confidences_found))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'confidences_found))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses_found))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses_found))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rec-response>) istream)
  "Deserializes a message object of type '<rec-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'models_found) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'models_found)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'confidences_found) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'confidences_found)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses_found) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses_found)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rec-response>)))
  "Returns string type for a service object of type '<rec-response>"
  "rec_msg_and_serv/recResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rec-response)))
  "Returns string type for a service object of type 'rec-response"
  "rec_msg_and_serv/recResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rec-response>)))
  "Returns md5sum for a message object of type '<rec-response>"
  "2c4745a1274bef7c9fa1e4e9500ac492")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rec-response)))
  "Returns md5sum for a message object of type 'rec-response"
  "2c4745a1274bef7c9fa1e4e9500ac492")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rec-response>)))
  "Returns full string definition for message of type '<rec-response>"
  (cl:format cl:nil "std_msgs/String[] models_found~%float32[] confidences_found~%geometry_msgs/Pose[] poses_found~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rec-response)))
  "Returns full string definition for message of type 'rec-response"
  (cl:format cl:nil "std_msgs/String[] models_found~%float32[] confidences_found~%geometry_msgs/Pose[] poses_found~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rec-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'models_found) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'confidences_found) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses_found) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rec-response>))
  "Converts a ROS message object to a list"
  (cl:list 'rec-response
    (cl:cons ':models_found (models_found msg))
    (cl:cons ':confidences_found (confidences_found msg))
    (cl:cons ':poses_found (poses_found msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'rec)))
  'rec-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'rec)))
  'rec-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rec)))
  "Returns string type for a service object of type '<rec>"
  "rec_msg_and_serv/rec")