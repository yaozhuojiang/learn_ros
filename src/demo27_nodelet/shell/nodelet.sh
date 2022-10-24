rosrun nodelet nodelet manager __name:=mymanager
rosrun nodelet nodelet load nodelet_tutorial_math/Plus mymanager __name:=n1 _value:=100
rosrun nodelet nodelet load nodelet_tutorial_math/Plus mymanager __name:=n2 _value:=-50 /n2/in:=/n1/out
rostopic pub -r 10 /n1/in std_msgs/Float64 "data: 10.0"
rostopic echo /n2/out
