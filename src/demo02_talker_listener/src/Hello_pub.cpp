#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "chatter");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<std_msgs::String>("chatter", 10);
    std_msgs::String msg;
    int count = 0;
    ros::Rate r(1);
    while (ros::ok()) {
        std::stringstream ss;
        ss << count;
        msg.data = ss.str();
        pub.publish(msg);
        ROS_INFO("%s", msg.data.c_str());
        r.sleep();
        count++;
        // ros::spinOnce();
    }
    return 0;
}