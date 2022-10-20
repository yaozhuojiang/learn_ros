from time import sleep
import rospy

if __name__ == "__main__":
    rospy.init_node("solve", anonymous=True)
    du = rospy.Duration(5);
    for _ in range(3):
        rospy.sleep(du)
