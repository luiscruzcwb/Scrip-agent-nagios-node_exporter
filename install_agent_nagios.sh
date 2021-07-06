#!/bin/bash
#Instalar agente nagios 
#IP Nagios 35.209.110.48

IP=35.209.110.48
DIR=/etc/nagios/nrpe.cfg

apt update && apt install -y nagios-nrpe-server nagios-plugins && apt clean

sed -i "s/allowed_hosts=127.0.0.1/allowed_hosts=127.0.0.1,$IP/" $DIR
sed -i "303acommand[check_loads]=/usr/lib/nagios/plugins/check_load -w 5.0,4.0,3.0 -c 10.0,6.0,4.0" $DIR
sed -i "304acommand[check_disk/]=/usr/lib/nagios/plugins/check_disk -w 20% -c 10% -p /" $DIR
sed -i "305acommand[check_disk/var/www/]=/usr/lib/nagios/plugins/check_disk -w 20% -c 10% -p /var/" $DIR
sed -i "306acommand[check_procs]=/usr/lib/nagios/plugins/check_procs -w 250 -c 400 -s RSZDT" $DIR
sed -i "307acommand[check_crond]=/usr/lib/nagios/plugins/check_procs -a '/usr/sbin/crond -n' -u root -c 1:1" $DIR

/etc/init.d/nagios-nrpe-server restart

exit 0
