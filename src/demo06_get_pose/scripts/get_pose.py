#! /usr/bin/env python
import rospy
from turtlesim.msg import Pose

def doPose(data):
    rospy.loginfo(f"x = {data.x}, y = {data.y},  = {data.theta}, linear_velocity = {data.linear_velocity}, angular_velocity = {data.angular_velocity}");

if __name__ == "__main__":
    rospy.init_node("get_pose")
    sub = rospy.Subscriber("/turtle1/pose", Pose, doPose, queue_size=1000)
    rospy.spin()