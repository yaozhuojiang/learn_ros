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
    for (int i = 1; i <= 50; i++) {
        spawn.request.x = random(0, N);
        spawn.request.y = random(0, N);
        spawn.request.theta = random(0, 6);
        spawn.request.name = "my_turtle" + std::to_string(i + 15);
        bool flag = client.call(spawn);
        if (flag) {
            ROS_INFO("OK");
        } else {
            ROS_INFO("failed");
        }
    }
    return 0;
}