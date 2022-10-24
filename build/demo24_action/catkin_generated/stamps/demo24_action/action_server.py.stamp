#! /usr/bin/env python
import rospy
import actionlib
from demo24_action.msg import *

class MyActionServer:
    def __init__(self):
        #SimpleActionServer(name, ActionSpec, execute_cb=None, auto_start=True)
        self.server = actionlib.SimpleActionServer("addInts",AddIntsAction,self.cb,False)
        self.server.start()
        rospy.loginfo("服务端启动")

    def cb(self,goal):
        rospy.loginfo("服务端处理请求:")
        #1.解析目标值
        num = goal.num
        #2.循环累加，连续反馈
        rate = rospy.Rate(10)
        sum = 0
        for i in range(1,num + 1):
            # 累加
            sum = sum + i
            # 计算进度并连续反馈
            feedBack = i / num
            rospy.loginfo("当前进度:%.2f",feedBack)

            feedBack_obj = AddIntsFeedback()
            feedBack_obj.progress_bar = feedBack
            self.server.publish_feedback(feedBack_obj)
            rate.sleep()
        #3.响应最终结果
        result = AddIntsResult()
        result.result = sum        
        self.server.set_succeeded(result)
        rospy.loginfo("响应结果:%d",sum)

if __name__ == "__main__":
    rospy.init_node("action_server_p")
    server = MyActionServer()
    rospy.spin()
