#!/bin/bash -xe
exec > /tmp/appstop.log 2>&1

systemctl tomcat stop
systemctl tomcat status