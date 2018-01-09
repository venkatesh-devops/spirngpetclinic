#! /bin/bash
cd /
cd /c
cd "Program Files (x86)"
cd /jenkins/workspace/spring-petclinic-docker
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker build -f Dockerfile -t petclinic .
docker run -p 8080:8080 petclinic
