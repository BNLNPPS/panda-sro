#!/usr/bin/env python

import stomp

class MyListener(stomp.ConnectionListener):
    def on_error(self, frame):
        print(f"[ERROR] {frame.body}")
    def on_connected(self, frame):
        print("[INFO] Connected to broker")
    def on_send(self, frame):
        print("[INFO] Message sent")

conn = stomp.Connection([('pandamsg.sdcc.bnl.gov', 61613)])  # Replace with your broker host/port
conn.set_listener('', MyListener())

conn.connect(os.environ['MQ_USER'], os.environ['MQ_PASSWD'], wait=True)  # Use credentials defined in the environment

destination = '/queue/epic.test01'
message = 'hello world'

conn.send(destination=destination, body=message)
print(f"[INFO] Sent message to {destination}: {message}")

conn.disconnect()

exit(0)
