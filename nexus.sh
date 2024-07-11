sudo apt update && sudo apt upgrade -y
sudo apt install openjdk-8-jdk -y
sudo mkdir /app && cd /app
sudo wget https://download.sonatype.com/nexus/3/nexus-3.67.1-01-java8-unix.tar.gz
sudo tar -xvf nexus-3.67.1-01-java8-unix.tar.gz
sudo mv nexus-3.67.1-01 nexus
sudo useradd nexus
sudo passwd nexus
sudo chown -R nexus:nexus /app/nexus
sudo chown -R nexus:nexus /app/sonatype-work
echo 'run_as_user="nexus"' | sudo tee /app/nexus/bin/nexus.rc

#Step2 – Start the nexus using the below command in nexus Instance SSH terminal
# /app/nexus/bin/nexus start
# /app/nexus/bin/nexus status
