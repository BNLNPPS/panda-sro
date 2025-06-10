#!/usr/bin/env python

import stomp
import time
import os

# ---

class MyListener(stomp.ConnectionListener):
    def on_error(self, frame):
        print(f"[ERROR] {frame.body}")
    def on_message(self, frame):
        print(f"[RECEIVED] {frame.body}")
        conn.disconnect()

conn = stomp.Connection([('pandamsg.sdcc.bnl.gov', 61613)])  # Replace with your broker host/port
conn.set_listener('', MyListener())

conn.connect(os.environ['MQ_USER'], os.environ['MQ_PASSWD'], wait=True)  # Use credentials defined in the environment

destination = '/queue/epic.test01'
conn.subscribe(destination=destination, id=1, ack='auto')
print(f"[INFO] Subscribed to {destination}")

# Wait to receive message
time.sleep(5)
