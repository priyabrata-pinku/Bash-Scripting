#!/bin/bash

# update package & install dependancy #
echo "update & install dependancy"
echo "#####################################"
sudo yum update
sudo yum install wget unzip httpd -y
echo

# start & enable httpd service #
echo "Start & Enable httpd service"
echo "#####################################"
sudo systemctl start httpd
sudo systemctl enable httpd
echo

# make a directory & change directory to that #
echo "Make a Directory & Change Directory to That"
echo "#####################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

# download html zip file, unzip & copy into /var/www/httpd #
echo "DOwnload html zip file, Unzip & Copy into /var/www/httpd"
echo "#####################################"
wget https://www.tooplate.com/zip-templates/2098_health.zip
unzip 2098_health.zip
sudo cp -r 2098_health/* /var/www/html
echo

# restart httpd service
echo "Restrat httpd Service"
echo "#####################################"
sudo systemctl restart httpd
echo

# remove temp folder where zip file was downloaded #
echo "Remove Webfiles Directory"
echo "#####################################"
rm -rf /tmp/webfiles
echo

systemctl status httpd
ls /var/www/html