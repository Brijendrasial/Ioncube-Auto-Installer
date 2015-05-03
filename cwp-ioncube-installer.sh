#!/bin/bash

# Ioncube Installer in Centos Web Panel

# Simple Bash script by Bullten Web Hosting Solutions [http://www.bullten.com]

CDIR='/usr/local/ioncube'
phpversion=`php -v | grep ^PHP | cut -f2 -d " "| awk -F "." '{print "zend_extension=\"/usr/local/ioncube/ioncube_loader_lin_"$1"."$2".so\""}'`
phplocation=`php -i | grep php.ini | grep ^Configuration | cut -f6 -d" "`
RED='\033[01;31m'
RESET='\033[0m'
GREEN='\033[01;32m'

clear

echo -e "$GREEN******************************************************************************$RESET"
echo -e "   Ioncube Installation in CentOS Web Panel [http://centos-webpanel.com] $RESET"
echo -e "       Bullten Web Hosting Solutions http://www.bullten.com/"
echo -e "   Web Hosting Company Specialized in Providing Managed VPS and Dedicated Server   "
echo -e "$GREEN******************************************************************************$RESET"
echo " "
echo " "
echo -e $RED"This script will install Ioncube on your system"$RESET
echo -e $RED""
echo -n  "Press ENTER to start the installation  ...."
read option

echo ""

if [ -e "/usr/local/ioncube" ];then

echo -e $RED"Found installation directory. Enabling Ioncube loader now."$RESET
echo ""
echo -e $RED"Adding line $phpversion to file $phplocation/php.ini"$RESET
echo ""
echo -e "$phpversion" >> $phplocation/php.ini
echo ""
echo -e $RED"Ioncube installed sucessfully :)"$RESET
echo ""

else

echo ""
echo -e $RED"Installtion directory doesnt exist / Quitting installation"$RESET
exit

fi