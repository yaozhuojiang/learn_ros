#!/usr/bin/env python3
import rospy
import tf2_ros
from geometry_msgs.msg import TransformStamped
from tf2_geometry_msgs import PointStamped

if __name__ == "__main__":
    rospy.init_node("multi_sub")
    buffer = tf2_ros.Buffer()
    listener = tf2_ros.TransformListener(buffer)
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        try:
            tfs = buffer.lookup_transform("son2", "son1", rospy.Time(0))
            rospy.loginfo("父坐标系：%s", tfs.header.frame_id)
            rospy.loginfo("自坐标系：%s", tfs.child_frame_id)
            rospy.loginfo("相对坐标 %.2f %.2f %.2f", tfs.transform.translation.x, 
                                                    tfs.transform.translation.y,
                                                    tfs.transform.translation.z
            )
            point_source = PointStamped()
            point_source.header.frame_id = "son1"
            point_source.header.stamp = rospy.Time.now()
            point_source.point.x = 1
            point_source.point.y = 1
            point_source.point.z = 1

            point_target = buffer.transform(point_source,"son2",rospy.Duration(0.5))

            rospy.loginfo("point_target 所属的坐标系:%s",point_target.header.frame_id)
            rospy.loginfo("坐标点相对于 son2 的坐标:(%.2f,%.2f,%.2f)",
                        point_target.point.x,
                        point_target.point.y,
                        point_target.point.z
            )
        except Exception as e:
            rospy.logerr("%s", e)
        rate.sleep()
    