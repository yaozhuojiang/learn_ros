#include "ros/ros.h"

int main(int argc, char *argv[])
{
    ros::console::set_logger_level(ROSCONSOLE_DEFAULT_NAME, ros::console::levels::Debug);
    ros::init(argc, argv, "log");
    ros::NodeHandle nh;
    ROS_DEBUG("hello,DEBUG"); //不会输出
    ROS_INFO("hello,INFO"); //默认白色字体
    ROS_WARN("Hello,WARN"); //默认黄色字体
    ROS_ERROR("hello,ERROR");//默认红色字体
    ROS_FATAL("hello,FATAL");//默认红色字体
    return 0;
}