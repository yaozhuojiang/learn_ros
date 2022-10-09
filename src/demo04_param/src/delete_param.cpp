#include "ros/ros.h"

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "delete_param");
    ros::NodeHandle nh;
    bool r = nh.deleteParam("int");
    ROS_INFO("res = %s", (r ? "true" : "false"));
    return 0;
}