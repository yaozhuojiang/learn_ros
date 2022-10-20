#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc, char *argv[])
{
    std::map<std::string, std::string> mp;
    mp["__ns"] = "xxx";
    ros::init(mp, "demo14");
    // 全局名称
    // ros::NodeHandle nh;
    // ros::Publisher pub = nh.advertise<std_msgs::String>("/chatter", 1000);
    // ros::Publisher pub = nh.advertise<std_msgs::String>("/chatter/money", 1000);

    // 相对名称
    // ros::NodeHandle nh;
    // ros::Publisher pub = nh.advertise<std_msgs::String>("chatter", 1000);

    // 私有名称
    ros::NodeHandle nh("~");
    // ros::Publisher pub = nh.advertise<std_msgs::String>("chatter/money", 1000);
    // 话题名称用 / 开头，仍然是绝对的
    ros::Publisher pub = nh.advertise<std_msgs::String> ("/chatter/money", 1000);

    ros::Duration du(5);
    for (int i = 1; i <= 3; i++) {
        du.sleep();
    }
    return 0;
}