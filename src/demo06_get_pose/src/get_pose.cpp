#include "ros/ros.h"
#include "turtlesim/Pose.h"

void doPose(const turtlesim::Pose::ConstPtr &p)
{
    ROS_INFO("x = %.2f y = %.2f theta = %.2f linear_velocity = %.2f angular_velocity = %.2f",
    p -> x, p -> y, p -> theta, p -> linear_velocity, p -> angular_velocity);
}
int main(int argc, char *argv[])
{
    ros::init(argc, argv, "get_pose");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe<turtlesim::Pose>("/turtle1/pose", 1000, doPose);
    ros::spin();
    return 0;
}