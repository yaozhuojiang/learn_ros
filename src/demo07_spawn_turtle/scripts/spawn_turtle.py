#! /usr/bin/env python
import random
import rospy
from turtlesim.srv import Spawn, SpawnRequest, SpawnResponse

if __name__ == "__main__":
    rospy.init_node("spawn_turle")
    client = rospy.ServiceProxy("/spawn", Spawn)
    client.wait_for_service()
    req = SpawnRequest()
    for i in range(50):
        req.x = random.randint(0, 10)
        req.y = random.randint(0, 10)
        req.theta = random.randint(0, 6)
        req.name = f"my_turtle{i + 100}"
        try:
            response = client.call(req)
            rospy.loginfo("ok")
        except Exception:
            rospy.loginfo("failed")
