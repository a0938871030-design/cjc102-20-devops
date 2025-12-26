#!/bin/bash
docker run -p 80:5000 --name flask-web -d 613468529436.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-20-ecr-repo:latest

sleep 20s
