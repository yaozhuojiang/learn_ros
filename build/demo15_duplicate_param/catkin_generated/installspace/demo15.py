#!/usr/bin/env python3
import rospy
if __name__ == "__main__":
    rospy.set_param("/py_A",100)  #全局,和命名空间以及节点名称无关
    rospy.set_param("py_B",100)  #相对,参考命名空间
    rospy.set_param("~py_C",100)  #私有,参考命名空间与节点名称
