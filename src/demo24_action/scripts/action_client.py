#! /usr/bin/env python

import rospy
import actionlib
from demo24_action.msg import *

def done_cb(state,result):
    if state == actionlib.GoalStatus.SUCCEEDED:
        rospy.loginfo("响应结果:%d",result.result)

def active_cb():
    rospy.loginfo("服务被激活....")


def fb_cb(fb):
    rospy.loginfo("当前进度:%.2f",fb.progress_bar)

if __name__ == "__main__":
    # 2.初始化 ROS 节点
    rospy.init_node("action_client_p")
    # 3.创建 action Client 对象
    client = actionlib.SimpleActionClient("addInts",AddIntsAction)
    # 4.等待服务
    client.wait_for_server()
    # 5.组织目标对象并发送
    goal_obj = AddIntsGoal()
    goal_obj.num = 10
    client.send_goal(goal_obj,done_cb,active_cb,fb_cb)
    # 6.编写回调, 激活、连续反馈、最终响应
    # 7.spin
    rospy.spin()
