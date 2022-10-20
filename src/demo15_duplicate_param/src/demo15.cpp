#include "ros/ros.h"

int main(int argc, char *argv[])
{
    std::map<std::string, std::string> mp;
    mp["__ns"] = "xxx";
    ros::init(mp, "demo15");
    // 全局
    ros::param::set("/set_A", 100);
    // 相对
    ros::param::set("set_B", 100);
    // 私有
    ros::param::set("~set_C", 100);

    ros::NodeHandle nh;
    nh.setParam("/nh_A", 100);
    nh.setParam("nh_B", 100);

    ros::NodeHandle nh_private("~");
    nh_private.setParam("nh_C", 100);
    return 0;
}