#include <time.h>
#include <cstdlib>
#include <string>
#include "ros/ros.h"
#include "turtlesim/Spawn.h"

const int N = 10;

int random(int a, int b)
{
    return rand() % (b - a + 1) + a;
}

int main(int argc, char *argv[])
{
    srand(time(NULL));
    ros::init(argc, argv, "spawn_turtle");
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<turtlesim::Spawn>("/spawn");
    ros::service::waitForService("/spawn");
    turtlesim::Spawn spawn;
    for (int i = 2; i <= 3; i++) {
        spawn.request.x = 5.54;
        spawn.request.y = 5.54 + i * (-0.6);
        spawn.request.theta = 0;
        spawn.request.name = "turtle" + std::to_string(i);
        bool flag = client.call(spawn);
        if (flag) {
            ROS_INFO("OK");
        } else {
            ROS_INFO("failed");
        }
    }
    return 0;
}