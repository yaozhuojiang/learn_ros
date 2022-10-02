# study_ros_note

ROS全称Robot Operating System(机器人操作系统)

ROS = Plumbing + Tools + Capabilities + Ecosystem

## HelloWorld 实现

### cpp 实现

1. 先创建一个工作空间

    ```bash
    mkdir -p 自定义空间名称/src
    cd 自定义空间名称
    catkin_make
    ```

2. 创建一个功能包

    ```bash
    cd src
    catkin_create_pkg 自定义ROS包名 roscpp rospy std_msgs
    ```

3. 进入 ros 包的 src 目录编辑源文件
4. 编辑 ros 包下的 Cmakelist.txt文件
5. 进入工作空间目录并编译
6. 执行

    ```bash
    roscore
    cd 工作空间
    source devel/setup.bash
    rosrun 包名 c++节点
    ```

### py实现

1. 进入 ros 包添加 scripts 目录并编辑 python 文件
2. 为 python 文件添加可执行权限
3. 编辑 ros 包下的 CamkeList.txt 文件
4. 进入工作空间目录并编译
5. 进入工作空间目录并执行

## launch 文件

1. 选定功能包右击 ---> 添加 launch 文件夹
2. 选定 launch 文件夹右击 ---> 添加 launch 文件
3. 编辑 launch 文件内容
4. 运行 launch 文件

    ```bash
    roslaunch 包名 launch文件名
    ```

5. 运行结果: 一次性启动了多个节点
