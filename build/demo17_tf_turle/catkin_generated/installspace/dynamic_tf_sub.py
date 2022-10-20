#!/usr/bin/env python3
import rospy
import tf2_ros
from tf2_geometry_msgs import PointStamped

if __name__ == "__main__":
    rospy.init_node("dynamic_tf_sub")
    buffer = tf2_ros.Buffer()
    listener = tf2_ros.TransformListener(buffer)
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        point_source = PointStamped()
        point_source.header.frame_id = "turtle1"
        point_source.header.stamp = rospy.Time.now()
        point_source.point.x = 10
        point_source.point.y = 2
        point_source.point.z = 3
        try:
            point_target = buffer.transform(point_source, "world", rospy.Duration(1))
            rospy.loginfo("%.2f %.2f %.2f", point_target.point.x, point_target.point.y, point_target.point.z)
        except Exception as e:
            rospy.logerr("%s", e)
        
        rate.sleep()