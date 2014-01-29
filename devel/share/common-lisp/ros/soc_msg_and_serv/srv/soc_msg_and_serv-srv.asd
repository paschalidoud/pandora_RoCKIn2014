
(cl:in-package :asdf)

(defsystem "soc_msg_and_serv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "segment_and_classify" :depends-on ("_package_segment_and_classify"))
    (:file "_package_segment_and_classify" :depends-on ("_package"))
  ))