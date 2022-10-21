#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "tf2_ros/transform_listener.h"
#include "geometry_msgs/TransformStamped.h"

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "turtle_follow");
    ros::NodeHandle nh;
    tf2_ros::Buffer buffer;
    tf2_ros::TransformListener listener(buffer);
    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("/my_turtle/cmd_vel", 1000);
    ros::Rate r(10);
    while (ros::ok()) {
        try {
            geometry_msgs::TransformStamped tfs = buffer.lookupTransform("my_turtle", "turtle1", ros::Time(0));
            geometry_msgs::Twist msg;
            msg.linear.x = 1 * sqrt(pow(tfs.transform.translation.x, 2) + pow(tfs.transform.translation.y, 2));
            msg.angular.z = 4 * atan2(tfs.transform.translation.y, tfs.transform.translation.x);
            pub.publish(msg);
        } catch (const std::exception &e) {
            ROS_INFO("%s", e.what());
        }
        r.sleep();
        ros::spinOnce();
    }
    return 0;
}