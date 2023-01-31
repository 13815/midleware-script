
#!bin/bash
# Author 13815
# Date 23Dec2022

#............How to install and configure SonarQube on CentOS 7

#Login to the server as a regular user

user_name= "whoami"

if [whoami != vagrant ];
then
echo "must be run as user vagrant !!!!!!"

exit 1

fi

su - vagrant

#Step 1: Java installation

sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y

#Step 2 Download SonarQube latest versions on your server

cd /opt

sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

#Step 3 Extract Packages

yum install unzip -y

sudo unzip /opt/sonarqube-9.3.0.51899.zip

#Step 4 Change ownership to the user and switch to linux binaries directory to start service

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
 ./sonar.sh start

#connect to SonarQube
# Open port 9000 incase the firewall is enabled
$ sudo firewall-cmd --permanent --add-port=9000/tcp cd
$ sudo firewall-cmd --reload

echo " Installation done successfully please get the ip and access your sonarqube on the browser"        
#http://http://192.168.56.133:9000

#Default lon in credentials are
        #Login: admin
        #Password: admin
