#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

# Get IP Address
function ip_address(){
  local IP="$( ip addr | egrep -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | egrep -v "^192\.168|^172\.1[6-9]\.|^172\.2[0-9]\.|^172\.3[0-2]\.|^10\.|^127\.|^255\.|^0\." | head -n 1 )"
  [ -z "${IP}" ] && IP="$( wget -qO- -t1 -T2 ipv4.icanhazip.com )"
  [ -z "${IP}" ] && IP="$( wget -qO- -t1 -T2 ipinfo.io/ip )"
  [ ! -z "${IP}" ] && echo "${IP}" || echo
} 
IPADDR="$(ip_address)";
YearNow=`date +'%Y'`;

wget -q -O IPREG https://raw.githubusercontent.com/vpsiix/AutoScriptDebian/master/Files/IPREG.txt
if ! grep -w -q $IPADDR IPREG; then
 linux_logo -l
 echo " "
 echo -e "\e[1;33;44m SORRY ... IP $IPADDR NOT REGISTERED for using this script"
 rm -f /root/IPREG
 exit 1
fi

echo ""
linux_logo -l
echo ""
echo -e "\e[1;33;44m IP $IPADDR registered for using this script"
sleep 5

echo -e ""
echo -e ""
linux_logo -l
echo -e ""
cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
swap=$( free -m | awk 'NR==4 {print $2}' )
up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
echo -e ""
echo -e "\e[032;1mCPU Model:\e[0m $cname"
echo -e "\e[032;1mNumber Of Cores:\e[0m $cores"
echo -e "\e[032;1mCPU Frequency:\e[0m $freq MHz"
echo -e "\e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
echo -e "\e[032;1mTotal Amount Of Swap:\e[0m $swap MB"
echo -e "\e[032;1mSystem Uptime:\e[0m $up"
echo -e "-----------------------------------------------------"
echo -e "           Script by VPSIIX"
echo -e " ======================================="
echo -e "  Copyright ©VPSIIX 2017 - $YearNow"
echo -e ""
echo -e "  https://fb.com/ahmadfauzanhabibi"
echo -e " Payapal Donations : https://paypal.me/ahmadfauzanhabibi"
echo -e " ======================================="
echo -e ""
rm -f DebianX*
cd
