#include "ros/ros.h"
#include <vector>
#include <map>
#include <string>

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "update_param");
    ros::NodeHandle nh;
    std::vector<int> ve;
    for (int i = 1; i <= 10; i++) ve.push_back(i);
    std::map<std::string, std::string> mp;
    mp["a"] = "b";
    mp["c"] = "d";
    nh.setParam("int", 10);
    nh.setParam("double", 3.14);
    nh.setParam("bool", true);
    nh.setParam("string", "hello world");
    nh.setParam("vector", ve);
    nh.setParam("map", mp);
    ros::param::set("int", 20);
    return 0;
}