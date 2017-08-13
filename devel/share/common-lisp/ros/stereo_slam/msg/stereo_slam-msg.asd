
(cl:in-package :asdf)

(defsystem "stereo_slam-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GraphPoses" :depends-on ("_package_GraphPoses"))
    (:file "_package_GraphPoses" :depends-on ("_package"))
  ))