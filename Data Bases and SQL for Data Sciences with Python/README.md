#Setup for LAMP Stack
#A “LAMP” stack is a group of open source software that is typically installed together in order to enable a server to host dynamic websites and web apps written in PHP. This term is an acronym which represents the Linux operating system with the Apache web server. The site data is stored in a MySQL database, and dynamic content is processed by PHP.
#https://www.digitalocean.com/community/tutorials/how-to-install-lamp-stack-on-ubuntu

#APACHE
sudo apt install apache2
#sudo ufw app list
#check if Apache/Apache Full/Apache Secure is listed.
#Apache (80 - Normal, unencrypted web traffic), Apache Full (80 and 443) and Apache Secure (443 - TLS/SSL encrypted traffic)
sudo ufw enable
sudo ufw allow in "Apache"

##get the ip address
ip addr show wlp2s0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'
#192.168.0.114

#MySQL
sudo apt install mysql-server
sudo mysql
	sql > ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
	sql > exit
sudo mysql_secure_installation
mysql -u root -p

of password1
or Password1
#PHP
sudo apt install php libapache2-mod-php php-mysql

root
password123!@#ABC
http://192.168.0.114/phpmyadmin
#password1
