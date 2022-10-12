#!/usr/bin/env python3
import rospy
if __name__ == "__main__":
    rospy.init_node("set_background")
    rospy.set_param("/t1/background_r", 0)
    rospy.set_param("/t1/background_g", 0)
    rospy.set_param("/t1/background_b", 255)
