#include "ros/ros.h"
#include "demo03_server_client/AddInts.h"

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "AddInts_Client");
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<demo03_server_client::AddInts>("AddInts");
    ros::service::waitForService("AddInts");
    demo03_server_client::AddInts ai;
    ai.request.num1 = atoi(argv[1]);
    ai.request.num2 = atoi(argv[2]);
    bool flag = client.call(ai);
    if (flag) {
        ROS_INFO("res = %d", ai.response.sum);
    } else {
        ROS_INFO("请求处理错误");
    }
    return 0;
}