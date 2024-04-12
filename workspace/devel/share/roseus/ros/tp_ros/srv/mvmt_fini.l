;; Auto-generated. Do not edit!


(when (boundp 'tp_ros::mvmt_fini)
  (if (not (find-package "TP_ROS"))
    (make-package "TP_ROS"))
  (shadow 'mvmt_fini (find-package "TP_ROS")))
(unless (find-package "TP_ROS::MVMT_FINI")
  (make-package "TP_ROS::MVMT_FINI"))
(unless (find-package "TP_ROS::MVMT_FINIREQUEST")
  (make-package "TP_ROS::MVMT_FINIREQUEST"))
(unless (find-package "TP_ROS::MVMT_FINIRESPONSE")
  (make-package "TP_ROS::MVMT_FINIRESPONSE"))

(in-package "ROS")





(defclass tp_ros::mvmt_finiRequest
  :super ros::object
  :slots ())

(defmethod tp_ros::mvmt_finiRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass tp_ros::mvmt_finiResponse
  :super ros::object
  :slots (_isaction ))

(defmethod tp_ros::mvmt_finiResponse
  (:init
   (&key
    ((:isaction __isaction) nil)
    )
   (send-super :init)
   (setq _isaction __isaction)
   self)
  (:isaction
   (&optional (__isaction :null))
   (if (not (eq __isaction :null)) (setq _isaction __isaction)) _isaction)
  (:serialization-length
   ()
   (+
    ;; bool _isaction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isaction
       (if _isaction (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isaction
     (setq _isaction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tp_ros::mvmt_fini
  :super ros::object
  :slots ())

(setf (get tp_ros::mvmt_fini :md5sum-) "03440024cfd8b4ba675d5d1a23278c8b")
(setf (get tp_ros::mvmt_fini :datatype-) "tp_ros/mvmt_fini")
(setf (get tp_ros::mvmt_fini :request) tp_ros::mvmt_finiRequest)
(setf (get tp_ros::mvmt_fini :response) tp_ros::mvmt_finiResponse)

(defmethod tp_ros::mvmt_finiRequest
  (:response () (instance tp_ros::mvmt_finiResponse :init)))

(setf (get tp_ros::mvmt_finiRequest :md5sum-) "03440024cfd8b4ba675d5d1a23278c8b")
(setf (get tp_ros::mvmt_finiRequest :datatype-) "tp_ros/mvmt_finiRequest")
(setf (get tp_ros::mvmt_finiRequest :definition-)
      "---
bool isaction
")

(setf (get tp_ros::mvmt_finiResponse :md5sum-) "03440024cfd8b4ba675d5d1a23278c8b")
(setf (get tp_ros::mvmt_finiResponse :datatype-) "tp_ros/mvmt_finiResponse")
(setf (get tp_ros::mvmt_finiResponse :definition-)
      "---
bool isaction
")



(provide :tp_ros/mvmt_fini "03440024cfd8b4ba675d5d1a23278c8b")


