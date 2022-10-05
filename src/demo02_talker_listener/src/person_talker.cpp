#include "ros/ros.h"
#include "demo02_talker_listener/Person.h"

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "person_talker");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<demo02_talker_listener::Person>("person_chatter", 10);
    demo02_talker_listener::Person peo;
    peo.age = 15;
    peo.height = 180;
    peo.name = "goofoo";
    ros::Rate r(1);
    while (ros::ok()) {
        pub.publish(peo);
        ROS_INFO("%s %d %f", peo.name.c_str(), peo.age, peo.height);
        peo.age += 1;
        r.sleep();
    }
    return 0;
}