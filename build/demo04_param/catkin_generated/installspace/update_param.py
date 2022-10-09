#!/usr/bin/env python3
import rospy
if __name__ == "__main__":
    rospy.init_node("update_param")
    rospy.set_param("int", 10)
    rospy.set_param("double", 3.14)
    rospy.set_param("bool", True)
    rospy.set_param("string", "hello python")
    rospy.set_param("list", [1, 2, 3])
    rospy.set_param("dict", {'a':'b', 'c':'d'})
