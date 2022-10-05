#include "ros/ros.h"
#include "demo03_server_client/AddInts.h"

bool do_req(demo03_server_client::AddInts::Request& req, demo03_server_client::AddInts::Response& resp)
{
    int num1 = req.num1, num2 = req.num2;
    ROS_INFO("%d %d", num1, num2);
    if (num1 < 0 || num2 < 0) {
        ROS_ERROR("数据不可以是负数");
        return false;
    }
    resp.sum = num1 + num2;
    return true;
}

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "AddInts_Server");
    ros::NodeHandle nh;
    ros::ServiceServer server = nh.advertiseService("AddInts", do_req);
    ROS_INFO("服务已经启动！！！");
    ros::spin();
    return 0;
}