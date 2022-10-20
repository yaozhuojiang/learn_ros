rosrun turtlesim turtlesim_node __ns:=/xxx
rosrun turtlesim turtlesim_node __ns:=/yyy

rosrun turtlesim  turtlesim_node __name:=t1
rosrun turtlesim  turtlesim_node __name:=t2

rosrun turtlesim turtlesim_node /turtlesim:=t1(不适用于python)
rosrun turtlesim turtlesim_node /turtlesim:=t2(不适用于python)

rosrun turtlesim turtlesim_node __ns:=/xxx __name:=tn