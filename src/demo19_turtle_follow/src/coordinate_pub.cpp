#include "ros/ros.h"
#include "turtlesim/Pose.h"
#include "tf2_ros/transform_broadcaster.h"
#include "tf2/LinearMath/Quaternion.h"

std::string turtle_name;

void doPose(const turtlesim::Pose::ConstPtr &pose)
{
    static tf2_ros::TransformBroadcaster broadcaster;
    geometry_msgs::TransformStamped tfs;
    tfs.header.frame_id = "world1";
    tfs.header.stamp = ros::Time::now();
    tfs.child_frame_id = turtle_name;
    tfs.transform.translation.x = pose -> x;
    tfs.transform.translation.y = pose -> y;
    tfs.transform.translation.z = 0.0;
    tf2::Quaternion qtn;
    qtn.setRPY(0, 0, pose->theta);
    tfs.transform.rotation.x = qtn.getX();
    tfs.transform.rotation.y = qtn.getY();
    tfs.transform.rotation.z = qtn.getZ();
    tfs.transform.rotation.w = qtn.getW();
    broadcaster.sendTransform(tfs);
}

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "coordinate_pub");
    ros::NodeHandle nh;
    if (argc != 2) {
        ROS_INFO("请传入要发布的参数");
    } else {
        turtle_name = argv[1];
        ROS_INFO("%s 已经发布", turtle_name.c_str());
        ros::Subscriber sub_ = nh.subscribe<turtlesim::Pose>(turtle_name + "/pose", 1000, doPose);
        ros::spin();
    }
    return 0;
}