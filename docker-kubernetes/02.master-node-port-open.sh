#!/bin/bash
# chcking firewalld service
systemctl status firewalld;
# port open
firewall-cmd --permanent --zone=public --add-port=2379-2380/tcp;
firewall-cmd --permanent --zone=public --add-port=6443/tcp;
firewall-cmd --permanent --zone=public --add-port=10250-10252/tcp;
firewall-cmd --permanent --zone=public --add-port=10255/tcp;
# reloading
firewall-cmd --reload;
# checking 
firewall-cmd --permanent --zone=public --list-ports;