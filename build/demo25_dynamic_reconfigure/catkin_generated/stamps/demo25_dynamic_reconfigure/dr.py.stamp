#! /usr/bin/env python
import rospy
from dynamic_reconfigure.server import Server
from demo25_dynamic_reconfigure.cfg import drConfig

"""
    动态参数服务端: 参数被修改时直接打印
    实现流程:
        1.导包
        2.初始化 ros 节点
        3.创建服务对象
        4.回调函数处理
        5.spin
"""
# 回调函数
def cb(config,level):
    rospy.loginfo("python 动态参数服务解析:%d,%.2f,%d,%s,%d",
            config.int_param,
            config.double_param,
            config.bool_param,
            config.string_param,
            config.list_param
    )
    return config

if __name__ == "__main__":
    # 2.初始化 ros 节点
    rospy.init_node("dr_p")
    # 3.创建服务对象
    server = Server(drConfig,cb)
    # 4.回调函数处理
    # 5.spin
    rospy.spin()
