#!/usr/bin/env python3
import rospy
from demo02_talker_listener.msg import Person

if __name__ == "__main__":
    rospy.init_node("person_talker")
    pub = rospy.Publisher("person_chatter", Person, queue_size=10)
    peo = Person()
    peo.age = 15
    peo.name = 'goofoo'
    peo.height = 180
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        pub.publish(peo)
        rospy.loginfo(f'{peo.name} {peo.age} {peo.height}')
        peo.age += 1
        rate.sleep()
