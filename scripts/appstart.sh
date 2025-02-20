#!/bin/bash -xe
exec > /tmp/appstart.log 2>&1

systemctl tomcat start
systemctl tomcat status