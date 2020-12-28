#!/bin/bash
#Update UniFi:
# curl -s http://server/path/script.sh | bash -s arg1 arg2

#Set version numbers for download:
unifiversion=$1

#Stop Service:
systemctl stop unifi

#Download latest software:
wget "http://dl.ubnt.com/unifi/$unifiversion/UniFi.unix.zip" -O /tmp/UniFi.unix.zip

#Extract UniFi Video software:
unzip -qo /tmp/UniFi.unix.zip -d /opt

#Set permissions:
chown -R unifi:unifi /opt/UniFi

#Start Service:
systemctl start unifi
