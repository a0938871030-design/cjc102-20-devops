#!/bin/bash

aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 613468529436.dkr.ecr.ap-northeast-1.amazonaws.com

if [ `docker images | grep 613468529436.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-20-ecr-repo | wc -l`  = 1 ]
then
        docker rmi 613468529436.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-20-ecr-repo
        docker pull 613468529436.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-20-ecr-repo:latest
else
        docker pull 613468529436.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-20-ecr-repo:latest
fi
