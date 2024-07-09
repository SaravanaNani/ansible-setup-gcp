#! /bin/bash
#Launch an instance with port:9000 and n2-standard-1 and 20 GB

# Update & Install "java11 & unzip" 
sudo apt update && sudo apt install openjdk-11-jdk unzip -y

# Home directory for sonar user
sudo mkdir -p /home/sonar

cd /opt/
wget https://binaries.sonarsource.com/?prefix=Distribution/sonarqube/sonarqube-10.6.0.92116.zip
unzip sonarqube-10.6.0.92116.zip
sudo useradd --shell /bin/bash sonar
chown sonar:sonar /opt/sonarqube-10.6.0.92116 -R
chmod 777 /opt/sonarqube-10.6.0.92116 -R
su - sonar

#run this on server manually
#cd /opt/sonarqube-10.6.0.92116/bin/linux-x86-64/
#sh sonar.sh start
#sh sonar.sh status

#echo "user=admin & password=admin"
