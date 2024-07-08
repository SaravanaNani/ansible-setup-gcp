sudo apt install default-jdk -y
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.25/bin/apache-tomcat-10.1.25.tar.gz
tar -zxvf apache-tomcat-10.1.25.tar.gz
sed -i '56  a\<role rolename="manager-gui"/>' apache-tomcat-10.1.25/conf/tomcat-users.xml
sed -i '57  a\<role rolename="manager-script"/>' apache-tomcat-10.1.25/conf/tomcat-users.xml
sed -i '58  a\<user username="admin" password="tomcat" roles="manager-gui, manager-script"/>' apache-tomcat-10.1.25/conf/tomcat-users.xml
sed -i '59  a\</tomcat-users>' apache-tomcat-10.1.25/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-10.1.25/conf/tomcat-users.xml
sed -i '21d' apache-tomcat-10.1.25/webapps/manager/META-INF/context.xml
sed -i '22d'  apache-tomcat-10.1.25/webapps/manager/META-INF/context.xml
sh apache-tomcat-10.1.25/bin/startup.sh

#NOTE - PASSWORD=USERNAME=tomcat 
