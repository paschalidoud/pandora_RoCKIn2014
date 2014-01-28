
(cl:in-package :asdf)

(defsystem "rec_msg_and_serv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "rec" :depends-on ("_package_rec"))
    (:file "_package_rec" :depends-on ("_package"))
  ))