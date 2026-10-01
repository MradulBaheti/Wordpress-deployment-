#!/bin/bash
cd  /root/ansible

docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID mradulbaheti/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID mradulbaheti/$JOB_NAME:latest

docker push mradulbaheti/$JOB_NAME:$BUILD_ID

docker push mradulbaheti/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID mradulbaheti/$JOB_NAME:$BUILD_ID mradulbaheti/$JOB_NAME:latest
