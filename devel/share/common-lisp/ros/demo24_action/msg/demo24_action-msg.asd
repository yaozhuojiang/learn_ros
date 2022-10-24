
(cl:in-package :asdf)

(defsystem "demo24_action-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AddIntsAction" :depends-on ("_package_AddIntsAction"))
    (:file "_package_AddIntsAction" :depends-on ("_package"))
    (:file "AddIntsActionFeedback" :depends-on ("_package_AddIntsActionFeedback"))
    (:file "_package_AddIntsActionFeedback" :depends-on ("_package"))
    (:file "AddIntsActionGoal" :depends-on ("_package_AddIntsActionGoal"))
    (:file "_package_AddIntsActionGoal" :depends-on ("_package"))
    (:file "AddIntsActionResult" :depends-on ("_package_AddIntsActionResult"))
    (:file "_package_AddIntsActionResult" :depends-on ("_package"))
    (:file "AddIntsFeedback" :depends-on ("_package_AddIntsFeedback"))
    (:file "_package_AddIntsFeedback" :depends-on ("_package"))
    (:file "AddIntsGoal" :depends-on ("_package_AddIntsGoal"))
    (:file "_package_AddIntsGoal" :depends-on ("_package"))
    (:file "AddIntsResult" :depends-on ("_package_AddIntsResult"))
    (:file "_package_AddIntsResult" :depends-on ("_package"))
  ))