#!/bin/bash
#Update UniFi:
# curl -s https://raw.githubusercontent.com/johnmate/scripts/main/unifi_update.sh?token=ABVJ2AJCTREA4YITX4M2F4275IC3S | bash -s 6.0.43

#Set version numbers for download:
unifiversion=$1

#Stop Service:
systemctl stop unifi

#Download latest software:
curl -s "http://dl.ubnt.com/unifi/$unifiversion/UniFi.unix.zip" -o /tmp/UniFi.unix.zip

#Extract UniFi Video software:
unzip -qo /tmp/UniFi.unix.zip -d /opt

#Set permissions:
chown -R unifi:unifi /opt/UniFi

#Start Service:
systemctl start unifi
