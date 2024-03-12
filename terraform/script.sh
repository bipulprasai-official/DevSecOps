#!/bin/bash
sudo apt update
sudo apt install fontconfig openjdk-17-jre
java -version
openjdk version "17.0.8" 2023-07-18
OpenJDK Runtime Environment (build 17.0.8+7-Debian-1deb12u1)
OpenJDK 64-Bit Server VM (build 17.0.8+7-Debian-1deb12u1, mixed mode, sharing)

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins


sudo apt-get update -y
sudo apt-get install jenkins -y
sudo systemctl start jenkins

# installing docker

sudo apt-get update
sudo apt-get install docker.io -y
sudo usermod -aG docker ubuntu 
newgrp docker
sudo chmod 777 /var/run/docker.sock

#installing sonarqube
# first install docker if you are creating different ec2 for sonarqube
sudo su
docker run -d -p 9000:9000 sonarqube:lts-community

#installing nexus
# first install docker if you are creating different ec2 for nexus
docker run -d -p 8081:8081 sonatype/nexus3
docker exec -it container_id /bin/bash
# cd sonatype-work
# cd nexus you will see admin.password cat admin.password and copy id