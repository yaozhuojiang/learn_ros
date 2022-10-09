#! /usr/bin/env python
import rospy
from geometry_msgs.msg import Twist

if __name__ == "__main__":
    rospy.init_node("control")
    pub = rospy.Publisher("/turtle1/cmd_vel", Twist, queue_size=1000)
    rate = rospy.Rate(10)
    msg = Twist()
    msg.linear.x = 1.0
    msg.linear.y = 0.0
    msg.linear.z = 0.0
    msg.angular.x = 0.0
    msg.angular.y = 0.0
    msg.angular.z = 2.0
    while not rospy.is_shutdown():
        pub.publish(msg)
        rate.sleep()
