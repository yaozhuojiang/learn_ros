#! /usr/bin/env python
import rospy
import rosbag
from std_msgs.msg import String

if __name__ == "__main__":
    rospy.init_node("read_bag")
    bag = rosbag.Bag("/home/boiledman/learn_ros/src/record/test1.bag", "r")
    bagMessage = bag.read_messages("chatter")
    for topic, msg, t in bagMessage:
        rospy.loginfo("%s, %s, %s", topic, msg, t)
    bag.close()
    