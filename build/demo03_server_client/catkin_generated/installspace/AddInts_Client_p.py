import rospy
from demo03_server_client.srv import *

if __name__ == "__main__":
    rospy.init_node("AddInts_Client")
    client = rospy.ServiceProxy("AddInts", AddInts)
    client.wait_for_service()
    req = AddIntsRequest()
    req.num1 = int(sys.argv[1])
    req.num2 = int(sys.argv[2]) 

    resp = client.call(req)
    rospy.loginfo("响应结果:%d",resp.sum)
