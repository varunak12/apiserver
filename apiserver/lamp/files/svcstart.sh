#!/bin/bash
cd ~/
mkdir apiserver
cd apiserver
git clone https://ansible-story@dev.azure.com/ansible-story/springbootapp_mumbai/_git/springbootapp_mumbai
cd springbootapp_mumbai/FlightsStatusResource
sed '61s/${HOMEPATH}//home/ubuntu/appserver/springbootapp_mumbai/FlightsStatusResource/gi' pom.xml
mvn spring-boot:run -Doracle.jdbc.timezoneAsRegion=false


