
(cl:in-package :asdf)

(defsystem "dji_motion-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "target_pose" :depends-on ("_package_target_pose"))
    (:file "_package_target_pose" :depends-on ("_package"))
  ))