#include "ros/ros.h"
#include "demo11_head/head.h"

void head_ns::head::run() 
{
    ROS_INFO("test head---");
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "test_head");
    ros::NodeHandle nh;
    head_ns::head hd;
    hd.run();
    return 0;
}