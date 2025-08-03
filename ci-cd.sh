#!/bin/bash

whoami
sudo apt update
sudo apt install git -y
rm -rf docker-test
git clone https://github.com/gagangowdagit/docker-test.git
cp -r ./docker-test/* .
sudo docker build -t test .
aws ecr get-login-password --region eu-north-1 |sudo docker login --username AWS --password-stdin 390403857604.dkr.ecr.eu-north-1.amazonaws.com
sudo docker tag test 390403857604.dkr.ecr.eu-north-1.amazonaws.com/mytestimage
sudo docker push 390403857604.dkr.ecr.eu-north-1.amazonaws.com/mytestimage
sudo docker run -d httpd
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker run -d -p 80:80 390403857604.dkr.ecr.eu-north-1.amazonaws.com/mytestimage





