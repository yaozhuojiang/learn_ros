#include "ros/ros.h"
#include "demo11_use_head/use_head.h"

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "use");
    ros::NodeHandle nh;
    use_head_ns::use_head uh;
    uh.fun();
    return 0;
}