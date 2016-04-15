#!/usr/bin/env bash
docker run -d --name jenkins -p 50000:50000 -p 80:8080 -v /home/robert/.jenkins-config/jenkins_home/:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -e JAVA_OPTS="-Djava.awt.headless=true" jenkins-android
docker exec -u root jenkins /bin/chmod 666 /var/run/docker.sock
