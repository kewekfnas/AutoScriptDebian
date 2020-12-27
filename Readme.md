<h2 align="center">AutoScript Install SSH & OpenVPN For Debian VPS By VPSIIX   <img src="https://img.shields.io/badge/Version-1.0-yellowgreen.svg"></h2>

<h2 align="center">Supported Linux Distribution</h2>
<p align="center"><img src="https://www.debian.org/logos/openlogo.svg"></p>
<p align="center"><img src="https://img.shields.io/static/v1?style=for-the-badge&logo=debian&label=Debian%208&message=Jessie&color=red"> <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=debian&label=Debian%209&message=Stretch&color=red"> <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=debian&label=Debian%2010&message=Buster&color=red"></p>
<p align="center"><img src="https://img.shields.io/badge/Service-OpenSSH-success.svg">  <img src="https://img.shields.io/badge/Service-Dropbear-success.svg">  <img src="https://img.shields.io/badge/Service-BadVPN-success.svg">  <img src="https://img.shields.io/badge/Service-Stunnel-success.svg">  <img src="https://img.shields.io/badge/Service-OpenVPN-success.svg">  <img src="https://img.shields.io/badge/Service-Squid3-success.svg">  <img src="https://img.shields.io/badge/Service-Privoxy-success.svg">  <img src="https://img.shields.io/badge/Service-Webmin-success.svg">

## Commands : <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=powershell&label=Shell&message=Bash%20Script&color=lightgray">

## Installation :

`
apt-get -y install wget && wget https://raw.githubusercontent.com/vpsiix/AutoScriptDebian/master/DebianX && chmod +x DebianX && ./DebianX
`

## Description :

### Port :
* OpenSSH Port : 22, 143. SSL : 444
* Dropbear Port : 109, 110. SSL : 443
* OpenVPN Port : 1194. SSL : 551
* Stunnel Port (See SSL Port Above)
* Squid Port : 8000, 8080
* Privoxy Port : 8888, 9999
* Badvpn Port 7300

### Feature : 
* Webmin http(s)://[vps-ip]:10000/
* OpenVPN Download http(s)://[vps-ip]:86
* Timezone : Asia/Jakarta
* Fail2Ban : [on]

### Other :
* <a href="https://github.com/vpsiix/PHP5.6">PHP 5.6</a>
* <a href="https://github.com/vpsiix/OCSPanel">OCS Panel</a>

## Donations :
https://paypal.me/ahmadfauzanhabibi
