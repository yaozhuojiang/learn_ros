from mimetypes import init
import queue


#! /usr/bin/env python
import rospy
from std_msgs.msg import String

if __name__ == "__main__":
    rospy.init_node("demo14")
    # 全局名称
    # pub = rospy.Publisher("/chatter", String, queue_size=1000)

    # 相对名称
    # pub = rospy.Publisher("chatter/money", String, queue_size=1000)

    # 私有名称
    pub = rospy.Publisher("~chatter", String, queue_size=1000)

    du = rospy.Duration(5)
    for _ in range(3):
        rospy.sleep(du)
