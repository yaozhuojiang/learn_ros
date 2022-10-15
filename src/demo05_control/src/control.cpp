#include <utility>
#include <vector>
#include <string>
#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "control");
    ros::NodeHandle nh;
    std::vector<std::pair<ros::Publisher, geometry_msgs::Twist> > ve;
    for (int i = 1; i <= 3; i++) {
        std::string tmp = "/turtle";
        tmp += (i + '0');
        tmp += "/cmd_vel";
        ROS_INFO("%s", tmp.c_str());
        geometry_msgs::Twist msg;
        msg.linear.x = i;
        msg.linear.y = 0.0;
        msg.linear.z = 0.0;
        msg.angular.x = 0.0;
        msg.angular.y = 0.0;
        msg.angular.z = 1;
        ve.push_back({nh.advertise<geometry_msgs::Twist>(tmp, 1000), msg});
    }
    ros::Rate r(1);
    while (ros::ok()) {
        for (auto &x : ve) {
            x.first.publish(x.second);
        }
        r.sleep();
    }
    return 0;
}