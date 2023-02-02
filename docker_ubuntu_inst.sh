#/bin/bash
#Ibrah
# 02/02/23
# How to Install Docker on Ubuntu Server

#Step 1: Clean up the system
sudo apt-get remove docker docker-engine docker.io containerd runc

#Step 2: Setup the docker repository
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release

#Now, add Docker’s official GPG key with the command
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#Then, use the following command to setup the stable repository
 echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/kyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 

# Step 3: Install Docker Engine
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

#You can check the status of the daemon with 
sudo systemctl status docker

#If the daemon is not up and running, start and enable it with
sudo systemctl start docker
sudo systemctl enable docker

#Verify that the version is installed correctly by running the Hello World image
sudo docker run hello-world

