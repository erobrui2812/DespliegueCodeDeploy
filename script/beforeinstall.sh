#!/bin/bash -xe
exec > /tmp/beforeinstall.log 2>&1

cd /tmp

git clone https://github.com/erobrui2812/studentify-elias

mv studentify-elias/ studentify/

chmod ugo+x studentify/gradlew

cd studentify/

./gradlew build

cp build/libs/studentify-1.0.0.war /opt/tomcat/webapps/studentify.war
