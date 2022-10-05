#! /usr/bin/env python
import rospy
from demo02_talker_listener.msg import Person

def do_msg(peo):
    rospy.loginfo(f'{peo.name} {peo.age} {peo.height}')

if __name__ == "__main__":
    rospy.init_node("person_listener")
    sub = rospy.Subscriber("person_chatter", Person, do_msg)
    rospy.spin()
