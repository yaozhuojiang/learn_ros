#!/usr/bin/env python3
import rospy
from demo03_server_client.srv import *

def do_req(req):
    Sum = req.num1 + req.num2
    rospy.loginfo("%d %d", req.num1, req.num2)
    return AddIntsResponse(Sum)

if __name__ == "__main__":
    rospy.init_node("AddInts_Server")
    server = rospy.Service("AddInts", AddInts, do_req)
    rospy.loginfo("start server ---")
    rospy.spin()
