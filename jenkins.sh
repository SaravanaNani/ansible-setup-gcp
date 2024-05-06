#Jenkins & Git - Installation: 

#Vim jenkins.sh (Copy & Paste the below script in this file): 

sudo apt update 

sudo apt install git -y 

sudo apt install openjdk-17-jre -y 

  curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \ 

    /usr/share/keyrings/jenkins-keyring.asc > /dev/null 

  echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \ 

    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \ 

    /etc/apt/sources.list.d/jenkins.list > /dev/null 

sudo apt-get update 

sudo apt-get install jenkins –y 

#To Run the script: sh jenkins.sh 
