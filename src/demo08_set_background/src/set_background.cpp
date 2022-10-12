#include "ros/ros.h"

const int N = 255;

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "set_background");
    ros::NodeHandle nh;
    nh.setParam("/t1/background_r", 0);
    nh.setParam("/t1/background_g", N);
    nh.setParam("/t1/background_b", 0);
    int r_val, g_val, b_val;
    nh.getParam("/t1/background_r", r_val);
    nh.getParam("/t1/background_g", g_val);
    nh.getParam("/t1/background_b", b_val);

    ROS_INFO("r = %d", r_val);
    ROS_INFO("g = %d", g_val);
    ROS_INFO("b = %d", b_val);
    return 0;
}