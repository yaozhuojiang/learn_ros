#include "ros/ros.h"
#include "tf2_ros/transform_listener.h"
#include "tf2/LinearMath/Quaternion.h"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"
#include "geometry_msgs/TransformStamped.h"
#include "geometry_msgs/PointStamped.h"

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "sub_frames");
    ros::NodeHandle nh;
    tf2_ros::Buffer buffer;
    tf2_ros::TransformListener listener(buffer);
    ros::Rate r(1);
    while (ros::ok()) {
        try {
            geometry_msgs::TransformStamped tfs = buffer.lookupTransform("son2", "son1", ros::Time(0));
            ROS_INFO("父坐标系：%s", tfs.header.frame_id.c_str());
            ROS_INFO("子坐标系：%s", tfs.child_frame_id.c_str());
            ROS_INFO("相对坐标：%.2f %.2f %.2f", tfs.transform.translation.x, tfs.transform.translation.y, tfs.transform.translation.z);
            geometry_msgs::PointStamped ps;
            ps.header.frame_id = "son1";
            ps.header.stamp = ros::Time::now();
            ps.point.x = 1.0;
            ps.point.y = 2.0;
            ps.point.z = 3.0;
            geometry_msgs::PointStamped psAtson2;
            psAtson2 = buffer.transform(ps, "son2");
            ROS_INFO("son1中的（%.2f %.2f %.2f）在son2中的坐标为（%.2f %.2f %.2f）",
                ps.point.x, ps.point.y, ps.point.z,
                psAtson2.point.x, psAtson2.point.y, psAtson2.point.z);
        } catch(const std::exception &e) {
            ROS_INFO("%s", e.what());
        }
        r.sleep();
    }
    return 0;
}