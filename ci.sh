pwd
rm -rf *
git clone https://github.com/gagangowdagit/docker-test.git
ls
cp -r docker-test/* .
ls
sudo docker images
sudo docker login
sudo docker build . -t gagangowdagit/docker-test
sudo docker push gagangowdagit/docker-test
