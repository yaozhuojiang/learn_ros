import rospy
from std_msgs.msg import String

def do_msg(msg):
    rospy.loginfo("%s", msg.data)

if __name__ == "__main__":
    rospy.init_node("listener_p")
    sub = rospy.Subscriber("chatter", String, do_msg, queue_size=10)
    rospy.spin()
