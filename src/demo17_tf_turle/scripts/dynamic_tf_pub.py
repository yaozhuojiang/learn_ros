#! /usr/bin/env python
import rospy
import tf2_ros
import tf
from turtlesim.msg import Pose
from geometry_msgs.msg import TransformStamped

def doPose(pose):
    broadcaster = tf2_ros.TransformBroadcaster()
    tfs = TransformStamped()
    tfs.header.frame_id = "world"
    tfs.header.stamp = rospy.Time.now()
    tfs.child_frame_id = "turtle1"
    tfs.transform.translation.x = pose.x
    tfs.transform.translation.y = pose.y
    tfs.transform.translation.z = 0.0
    qtn = tf.transformations.quaternion_from_euler(0, 0, pose.theta)
    tfs.transform.rotation.x = qtn[0]
    tfs.transform.rotation.y = qtn[1]
    tfs.transform.rotation.z = qtn[2]
    tfs.transform.rotation.w = qtn[3]
    broadcaster.sendTransform(tfs)

if __name__ == "__main__":
    rospy.init_node("dynamic_tf_pub")
    sub = rospy.Subscriber('/turtle1/pose', Pose, doPose)
    rospy.spin()