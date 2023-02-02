#/bin/bash
#Ibrah
# 02/02/23
# How to Install Docker on Centos 7 Server

#Step 1 Clean up the system
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

#Step 2: Setup the docker repository
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

#Step 3: Install the docker engine
 sudo yum install docker-ce docker-ce-cli containerd.io

#Step 4: Check the status, start and enable docker daemon
#Check the status of the docker daemon with the command
 sudo systemctl status docker

#If the daemon is not up and running, start and enable it with  the commands
sudo systemctl start docker
sudo systemctl enable docker

#Check the status of the daemon to make sure it is up and running with
sudo systemctl status docker