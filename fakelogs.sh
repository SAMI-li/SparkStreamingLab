#!/usr/bin/env sh
rm /tmp/logdata
touch /tmp/logdata
tail -f /tmp/logdata | nc -lk 7777 &
TAIL_NC_PID=$!
cat log1.log >> /tmp/logdata
sleep 5
cat og2.log >> /tmp/logdata
sleep 1
cat log1.log >> /tmp/logdata
sleep 2
cat log1.log >> /tmp/logdata
sleep 3
sleep 20
kill $TAIL_NC_PID
