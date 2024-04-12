; Auto-generated. Do not edit!


(cl:in-package tp_ros-srv)


;//! \htmlinclude mvmt_fini-request.msg.html

(cl:defclass <mvmt_fini-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass mvmt_fini-request (<mvmt_fini-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mvmt_fini-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mvmt_fini-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tp_ros-srv:<mvmt_fini-request> is deprecated: use tp_ros-srv:mvmt_fini-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mvmt_fini-request>) ostream)
  "Serializes a message object of type '<mvmt_fini-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mvmt_fini-request>) istream)
  "Deserializes a message object of type '<mvmt_fini-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mvmt_fini-request>)))
  "Returns string type for a service object of type '<mvmt_fini-request>"
  "tp_ros/mvmt_finiRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mvmt_fini-request)))
  "Returns string type for a service object of type 'mvmt_fini-request"
  "tp_ros/mvmt_finiRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mvmt_fini-request>)))
  "Returns md5sum for a message object of type '<mvmt_fini-request>"
  "03440024cfd8b4ba675d5d1a23278c8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mvmt_fini-request)))
  "Returns md5sum for a message object of type 'mvmt_fini-request"
  "03440024cfd8b4ba675d5d1a23278c8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mvmt_fini-request>)))
  "Returns full string definition for message of type '<mvmt_fini-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mvmt_fini-request)))
  "Returns full string definition for message of type 'mvmt_fini-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mvmt_fini-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mvmt_fini-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mvmt_fini-request
))
;//! \htmlinclude mvmt_fini-response.msg.html

(cl:defclass <mvmt_fini-response> (roslisp-msg-protocol:ros-message)
  ((isaction
    :reader isaction
    :initarg :isaction
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass mvmt_fini-response (<mvmt_fini-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mvmt_fini-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mvmt_fini-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tp_ros-srv:<mvmt_fini-response> is deprecated: use tp_ros-srv:mvmt_fini-response instead.")))

(cl:ensure-generic-function 'isaction-val :lambda-list '(m))
(cl:defmethod isaction-val ((m <mvmt_fini-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tp_ros-srv:isaction-val is deprecated.  Use tp_ros-srv:isaction instead.")
  (isaction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mvmt_fini-response>) ostream)
  "Serializes a message object of type '<mvmt_fini-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isaction) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mvmt_fini-response>) istream)
  "Deserializes a message object of type '<mvmt_fini-response>"
    (cl:setf (cl:slot-value msg 'isaction) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mvmt_fini-response>)))
  "Returns string type for a service object of type '<mvmt_fini-response>"
  "tp_ros/mvmt_finiResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mvmt_fini-response)))
  "Returns string type for a service object of type 'mvmt_fini-response"
  "tp_ros/mvmt_finiResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mvmt_fini-response>)))
  "Returns md5sum for a message object of type '<mvmt_fini-response>"
  "03440024cfd8b4ba675d5d1a23278c8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mvmt_fini-response)))
  "Returns md5sum for a message object of type 'mvmt_fini-response"
  "03440024cfd8b4ba675d5d1a23278c8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mvmt_fini-response>)))
  "Returns full string definition for message of type '<mvmt_fini-response>"
  (cl:format cl:nil "bool isaction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mvmt_fini-response)))
  "Returns full string definition for message of type 'mvmt_fini-response"
  (cl:format cl:nil "bool isaction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mvmt_fini-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mvmt_fini-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mvmt_fini-response
    (cl:cons ':isaction (isaction msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mvmt_fini)))
  'mvmt_fini-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mvmt_fini)))
  'mvmt_fini-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mvmt_fini)))
  "Returns string type for a service object of type '<mvmt_fini>"
  "tp_ros/mvmt_fini")