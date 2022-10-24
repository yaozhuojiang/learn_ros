#include "ros/ros.h"
#include "actionlib/client/simple_action_client.h"
#include "demo24_action/AddIntsAction.h"

typedef actionlib::SimpleActionClient<demo24_action::AddIntsAction> Client;

void done_cb(const actionlib::SimpleClientGoalState &state, const demo24_action::AddIntsResultConstPtr &result)
{
    if (state.state_ == state.SUCCEEDED) {
        ROS_INFO("The answer: %d", result -> result);
    } else {
        ROS_INFO("faild!");
    }
}

void activate_cb()
{
    ROS_INFO("activate...");
}

void feedback_cb(const demo24_action::AddIntsFeedbackConstPtr &feedback)
{
    ROS_INFO("当前进度: %.2f", feedback -> progress_bar);
}

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "action_client");
    ros::NodeHandle nh;
    Client client(nh, "addInts", true);
    client.waitForServer();
    demo24_action::AddIntsGoal goal;
    goal.num = 10;
    client.sendGoal(goal, &done_cb, &activate_cb, &feedback_cb);
    ros::spin();
    return 0;
}