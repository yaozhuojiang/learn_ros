#include "ros/ros.h"
#include "actionlib/server/simple_action_server.h"
#include "demo24_action/AddIntsAction.h"

typedef actionlib::SimpleActionServer<demo24_action::AddIntsAction> Server;

void cb(const demo24_action::AddIntsGoalConstPtr &goal, Server *server)
{
    int num = goal -> num;
    ROS_INFO("目标值：%d", num);
    int res = 0;
    demo24_action::AddIntsFeedback feedback;
    ros::Rate rate(10);
    for (int i = 1; i <= num; i++) {
        res += i;
        feedback.progress_bar = i * 1.0 / num;
        server->publishFeedback(feedback);
        rate.sleep();
    }
    demo24_action::AddIntsResult r;
    r.result = res;
    server -> setSucceeded(r);
    ROS_INFO("The answer: %d", r.result);
}
int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "action_server");
    ros::NodeHandle nh;
    Server server(nh, "addInts", boost::bind(&cb, _1, &server), false);
    server.start();
    ros::spin();
    return 0;
}