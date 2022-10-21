#include <thread>
#include "ros/ros.h"
#include "turtlesim/Spawn.h"

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "turtle_follow");
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<turtlesim::Spawn>("/spawn");
    ros::service::waitForService("/spawn");
    turtlesim::Spawn spawn;
    spawn.request.x = 1;
    spawn.request.y = 1;
    spawn.request.theta = 0;
    spawn.request.name = "my_turtle";
    bool flag = client.call(spawn);
    if (flag) {
        ROS_INFO("OK! Spawned my_turtle :)");
    } else {
        ROS_INFO("failed! :(");
    }
    return 0;
}