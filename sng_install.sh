#!/bin/bash
echo "Instalando sngrep"
echo "" 
rm -Rf /etc/yum.repos.d/irontec.repo
cat > /etc/yum.repos.d/irontec.repo <<EOF
[irontec]
name=Irontec RPMs repository
baseurl=http://packages.irontec.com/centos/\$releasever/\$basearch/
gpgcheck=0
EOF
rpm --import http://packages.irontec.com/public.key
yum install sngrep -y
