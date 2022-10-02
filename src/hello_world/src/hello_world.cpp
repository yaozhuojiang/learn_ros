#include "ros/ros.h"

int main(int argc, char *argv[])
{
    // ROS 节点初始化
    ros::init(argc, argv, "hello");
    // 创建 ROS 节点句柄
    ros::NodeHandle n;
    // 控制台输出语句
    ROS_INFO("hello world cpp");
    return 0;
}