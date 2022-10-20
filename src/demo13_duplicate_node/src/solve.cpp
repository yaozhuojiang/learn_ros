#include <map>
#include "ros/ros.h"

int main(int argc, char *argv[])
{
    // 名称别名设置
    // ros::init(argc, argv, "solve", ros::init_options::AnonymousName);
    
    // 命名空间设置
    std::map<std::string, std::string> mp;
    mp["__ns"] = "xxxx";
    ros::init(mp, "solve");
    ros::NodeHandle nh;
    ros::Time right_now = ros::Time::now();
    for (int i = 1; i <= 5; i++) {
        ros::Duration du(5);
        du.sleep();
    }
    return 0;
}