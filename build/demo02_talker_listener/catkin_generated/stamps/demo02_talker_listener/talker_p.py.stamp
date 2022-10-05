import rospy
from std_msgs.msg import String

if __name__ == "__main__":
    rospy.init_node("talker_p")
    pub = rospy.Publisher("chatter", String, queue_size=10);
    msg = String()
    count = 0
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        msg.data = str(count)
        pub.publish(msg)
        rate.sleep()
        rospy.loginfo("%s", msg.data)
        count += 1