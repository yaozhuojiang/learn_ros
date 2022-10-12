#include "ros/ros.h"

void doSomeThing(const ros::TimerEvent &event){
    ROS_INFO("-------------");
    ROS_INFO("event:%s",std::to_string(event.current_real.toSec()).c_str());
}

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    // 时刻
    ros::init(argc, argv, "time");
    ros::NodeHandle nh;
    ros::Time right_now = ros::Time::now();
    ROS_INFO("Current moment is %.2f\n", right_now.toSec());
    ROS_INFO("Current moment is %d\n", right_now.sec);

    ros::Time someTime(100, 100000000);
    ROS_INFO("Time is %.2f", someTime.toSec());
    ros::Time someTime2(100.3);
    ROS_INFO("Time is %.2f", someTime2.toSec());

    // 持续时间
    ROS_INFO("当前时刻:%.2f",ros::Time::now().toSec());
    ros::Duration du(5);
    du.sleep();
    ROS_INFO("持续时间:%.2f",du.toSec());
    ROS_INFO("当前时刻:%.2f",ros::Time::now().toSec());

    ROS_INFO("时间运算");
    ros::Time now = ros::Time::now();
    ros::Duration du1(10);
    ros::Duration du2(20);
    ROS_INFO("当前时刻:%.2f",now.toSec());
    //1.time 与 duration 运算
    ros::Time after_now = now + du1;
    ros::Time before_now = now - du1;
    ROS_INFO("当前时刻之后:%.2f",after_now.toSec());
    ROS_INFO("当前时刻之前:%.2f",before_now.toSec());

    //2.duration 之间相互运算
    ros::Duration du3 = du1 + du2;
    ros::Duration du4 = du1 - du2;
    ROS_INFO("du3 = %.2f",du3.toSec());
    ROS_INFO("du4 = %.2f",du4.toSec());
    //PS: time 与 time 不可以运算
    // ros::Time nn = now + before_now;//异常

    ros::Rate rate(1);//指定频率
    // while (true)
    // {
    //     ROS_INFO("-----------code----------");
    //     rate.sleep();//休眠，休眠时间 = 1 / 频率。
    // }


 // ROS 定时器
 /**
* \brief 创建一个定时器，按照指定频率调用回调函数。
*
* \param period 时间间隔
* \param callback 回调函数
* \param oneshot 如果设置为 true,只执行一次回调函数，设置为 false,就循环执行。
* \param autostart 如果为true，返回已经启动的定时器,设置为 false，需要手动启动。
*/
 //Timer createTimer(Duration period, const TimerCallback& callback, bool oneshot = false,
 //                bool autostart = true) const;

 // ros::Timer timer = nh.createTimer(ros::Duration(0.5),doSomeThing);
 ros::Timer timer = nh.createTimer(ros::Duration(0.5),doSomeThing,false);//只执行一次

 // ros::Timer timer = nh.createTimer(ros::Duration(0.5),doSomeThing,false,false);//需要手动启动
 // timer.start();
 ros::spin(); //必须 spin

    return 0;
}