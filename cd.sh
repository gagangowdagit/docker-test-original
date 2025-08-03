ls
sudo docker pull gagangowdagit/docker-test
sudo docker run -d nginx
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker run -d -p 80:80 gagangowdagit/docker-test 
