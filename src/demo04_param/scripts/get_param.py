#! /usr/bin/env python
import rospy
if __name__ == "__main__":
    rospy.init_node("get_param")
    rospy.get_param("int") 