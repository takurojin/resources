#!/bin/bash
# chcking firewalld service
systemctl status firewalld;
# port open
firewall-cmd --permanent --zone=public --add-port=10250/tcp;
firewall-cmd --permanent --zone=public --add-port=10255/tcp;
firewall-cmd --permanent --zone=public --add-port=30000-32767/tcp;
# reloading
firewall-cmd --reload;
# checking 
firewall-cmd --permanent --zone=public --list-ports;