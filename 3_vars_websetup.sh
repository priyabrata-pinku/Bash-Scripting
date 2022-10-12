#!/bin/bash

PACKAGE='wget unzip httpd'
SVC='httpd'
TMPDIR='/tmp/webfiles'
URL='https://www.tooplate.com/zip-templates/2098_health.zip'
ART_NAME='2098_health'

# Update Package & Install Dependancy #
echo "update & install dependancy"
echo "#####################################"
sudo yum update
sudo yum install $PACKAGE -y
echo

# Start & Enable httpd Service #
echo "Start & Enable httpd service"
echo "#####################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

# Make a Directory & Change Directory to That #
echo "Make a Directory & Change Directory to That"
echo "#####################################"
mkdir -p $TMPDIR
cd $TMPDIR
echo

# Download html zip file, unzip & copy into /var/www/httpd #
echo "DOwnload html zip file, Unzip & Copy into /var/www/httpd"
echo "#####################################"
wget $URL
unzip $ART_NAME.zip
sudo cp -r $ART_NAME/* /var/www/html
echo

# restart httpd service
echo "Restrat httpd Service"
echo "#####################################"
sudo systemctl restart $SVC
echo

# remove temp folder where zip file was downloaded #
echo "Remove Webfiles Directory"
echo "#####################################"
rm -rf $TMPDIR
echo

systemctl status $SVC
ls /var/www/html