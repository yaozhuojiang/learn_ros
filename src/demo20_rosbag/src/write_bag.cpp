#include "ros/ros.h"
#include "rosbag/bag.h"
#include "std_msgs/String.h"

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "write_bag");
    ros::NodeHandle nh;
    rosbag::Bag bag;
    bag.open("/home/boiledman/learn_ros/src/record/test.bag", rosbag::BagMode::Write);
    std_msgs::String msg;
    msg.data = "hello world";
    bag.write("/chatter", ros::Time::now(), msg);
    bag.write("/chatter", ros::Time::now(), msg);
    bag.write("/chatter", ros::Time::now(), msg);
    bag.write("/chatter", ros::Time::now(), msg);
    bag.close();
    return 0;
}