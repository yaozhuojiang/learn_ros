#!/usr/bin/env python3
import rospy

def doMsg(event):
    rospy.loginfo("+++++++++++")
    rospy.loginfo("当前时刻:%s",str(event.current_real))

if __name__ == "__main__":
    rospy.init_node("time")
    # 获取当前时刻
    right_now = rospy.Time.now()
    rospy.loginfo("当前时刻:%.2f",right_now.to_sec())
    rospy.loginfo("当前时刻:%.2f",right_now.to_nsec())
    # 自定义时刻
    some_time1 = rospy.Time(1234.567891011)
    some_time2 = rospy.Time(1234,567891011)
    rospy.loginfo("设置时刻1:%.2f",some_time1.to_sec())
    rospy.loginfo("设置时刻2:%.2f",some_time2.to_sec())

    # 从时间创建对象
    # some_time3 = rospy.Time.from_seconds(543.21)
    some_time3 = rospy.Time.from_sec(543.21) # from_sec 替换了 from_seconds
    rospy.loginfo("设置时刻3:%.2f",some_time3.to_sec())

    # 持续时间相关API
    rospy.loginfo("持续时间测试开始.....")
    du = rospy.Duration(3.3)
    rospy.loginfo("du1 持续时间:%.2f",du.to_sec())
    rospy.sleep(du) #休眠函数
    rospy.loginfo("持续时间测试结束.....")

    rospy.loginfo("时间运算")
    now = rospy.Time.now()
    du1 = rospy.Duration(10)
    du2 = rospy.Duration(20)
    rospy.loginfo("当前时刻:%.2f",now.to_sec())
    before_now = now - du1
    after_now = now + du1
    dd = du1 + du2
    # now = now + now #非法
    rospy.loginfo("之前时刻:%.2f",before_now.to_sec())
    rospy.loginfo("之后时刻:%.2f",after_now.to_sec())
    rospy.loginfo("持续时间相加:%.2f",dd.to_sec())

    # 设置执行频率
    rate = rospy.Rate(0.5)
    # while not rospy.is_shutdown():
    #     rate.sleep() #休眠
    #     rospy.loginfo("+++++++++++++++")

        #定时器设置
    """    
    def __init__(self, period, callback, oneshot=False, reset=False):
        Constructor.
        @param period: 回调函数的时间间隔
        @type  period: rospy.Duration
        @param callback: 回调函数
        @type  callback: function taking rospy.TimerEvent
        @param oneshot: 设置为True，就只执行一次，否则循环执行
        @type  oneshot: bool
        @param reset: if True, timer is reset when rostime moved backward. [default: False]
        @type  reset: bool
    """
    rospy.Timer(rospy.Duration(1),doMsg)
    # rospy.Timer(rospy.Duration(1),doMsg,True) # 只执行一次
    rospy.spin()

