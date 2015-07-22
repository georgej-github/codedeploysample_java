#!/bin/sh

ps aux | grep tomcat | grep -v grep

ret=$?

if [ $ret -eq 0 ]; then
  echo "tomcat running!" > /tmp/tomcat-status.log
else
  echo "tomcat failed!"
  echo "tomcat failed!" > /tmp/tomcat-status.log
  exit 1
fi
