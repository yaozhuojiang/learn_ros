
#include "ros/ros.h"
#include "demo02_talker_listener/Person.h"

void do_msg(const demo02_talker_listener::Person::ConstPtr& peo)
{
    ROS_INFO("%s %d %f", peo->name.c_str(), peo->age, peo->height);
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "person_listener");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe<demo02_talker_listener::Person>("person_chatter",10,do_msg);
    ros::spin();
    return 0;
}