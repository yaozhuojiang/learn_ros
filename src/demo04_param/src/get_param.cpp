#include "ros/ros.h"
/*

        hasParam(键)
            是否包含某个键，存在返回 true，否则返回 false

        searchParam(参数1，参数2)
            搜索键，参数1是被搜索的键，参数2存储搜索结果的变量
*/
int main(int argc, char *argv[])
{
    ros::init(argc, argv, "get_param");
    ros::NodeHandle nh;
    // nh.param()
    int int_value = nh.param("int", 100);
    ROS_INFO("int_value = %d", int_value);
    // nh.getParam()
    double double_val;
    nh.getParam("double", double_val);
    ROS_INFO("double_value = %.2f", double_val);
    // nh.getParamCached()
    std::string string_val;
    nh.getParamCached("string", string_val);
    ROS_INFO("string_value = %s", string_val.c_str());
    // nh.getParamNames()
    std::vector<std::string> param_names;
    nh.getParamNames(param_names);
    for (auto &x : param_names) {
        ROS_INFO("keys has %s", x.c_str());
    }
    // nh.hasParam()
    ROS_INFO("keys contains map? it's %s", (nh.hasParam("map") ? "true" : "false"));
    // nh.searchParam()
    std::string key;
    nh.searchParam("int", key);
    ROS_INFO("key is %s", key.c_str());
    return 0;
}