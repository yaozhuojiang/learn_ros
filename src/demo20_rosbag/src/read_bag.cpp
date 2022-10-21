#include "ros/ros.h"
#include "rosbag/bag.h"
#include "rosbag/view.h"
#include "std_msgs/String.h"

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "read_bag");
    ros::NodeHandle nh;
    rosbag::Bag bag;
    bag.open("/home/boiledman/learn_ros/src/record/test.bag", rosbag::BagMode::Read);
    for (rosbag::MessageInstance const m : rosbag::View(bag)) {
        std_msgs::String::ConstPtr p = m.instantiate<std_msgs::String>();
        if (p != nullptr) {
            ROS_INFO("%s", p -> data.c_str());
        }
    }
    bag.close();
    return 0;
}