#!/bin/bash
# execting this, first.
# /etc/yum.repos.d/public-yum-ol7.repo > ol7_addons > enabled = 1
# installing wget
mkdir /etc/docker;
touch /etc/docker/daemon.json;
cat << EOF > /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"]
}
EOF
yum install wget -y;
yum install docker-engine -y;
systemctl start docker;
systemctl enable docker;
systemctl | grep "docker.service";
docker -v;
