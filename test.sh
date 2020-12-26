#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

#############################
# Script by VPSIIX
# Payapal Donations : https://paypal.me/ahmadfauzanhabibi
# Facebook: https://fb.com/ahmadfauzanhabibi
#############################
## WARNING: Do not modify or edit anything
## all Function or Variables used for this script is too sensitive.
## Can be changed depends on your preferred values if you know what to do.
#############################

function ip_address(){
  local IP="$( ip addr | egrep -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | egrep -v "^192\.168|^172\.1[6-9]\.|^172\.2[0-9]\.|^172\.3[0-2]\.|^10\.|^127\.|^255\.|^0\." | head -n 1 )"
  [ -z "${IP}" ] && IP="$( wget -qO- -t1 -T2 ipv4.icanhazip.com )"
  [ -z "${IP}" ] && IP="$( wget -qO- -t1 -T2 ipinfo.io/ip )"
  [ ! -z "${IP}" ] && echo "${IP}" || echo
} 
IPADDR="$(ip_address)";
YearNow=`date +'%Y'`;

# check registered ip
wget -q -O IPREG https://raw.githubusercontent.com/vpsiix/AutoScriptDebian/master/Files/IPREG.txt
if ! grep -w -q $IPADDR IPREG; then
 linux_logo -l
 echo " "
 echo -e "\e[1;33;44m[ SORRY ... IP $IPADDR NOT REGISTERED for using this script]\e[0m"
 rm -f /root/IPREG
 exit 1
fi

echo ""
linux_logo -l
echo ""
echo -e "\e[1;33;44m[ IP $IPADDR registered for using this script]\e[0m"
sleep 5

# Showing additional information from installating this script
echo -e ""
echo -e ""
linux_logo -l
echo -e ""
echo -e "           Script by VPSIIX"
echo -e " ======================================="
echo -e "    https://fb.com/ahmadfauzanhabibi"
echo -e " ======================================="
echo -e ""
echo -e " Success Install AutoScript to $IPADDR"
echo -e ""
echo -e " ======================================="
echo -e " Copyright ©VPSIIX 2017 - $YearNow"
echo -e " Facebook: https://fb.com/ahmadfauzanhabibi"
echo -e " Payapal Donations : https://paypal.me/ahmadfauzanhabibi"
echo -e " ======================================="
echo -e ""
rm -f test.sh*
cd

