
(cl:in-package :asdf)

(defsystem "tp_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mvmt_fini" :depends-on ("_package_mvmt_fini"))
    (:file "_package_mvmt_fini" :depends-on ("_package"))
  ))