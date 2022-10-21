#!/usr/bin/env python3
import rospy
import rosbag
from std_msgs.msg import String

if __name__ == "__main__":
    rospy.init_node("write_bag")
    bag = rosbag.Bag("/home/boiledman/learn_ros/src/record/test1.bag", "w")
    s = String()
    s.data = "hahaha"
    bag.write("chatter", s);
    bag.write("chatter", s);
    bag.write("chatter", s);
    bag.close()
    