#!/bin/bash
echo "Instalando sngrep"
echo "" 
rm -Rf /etc/yum.repos.d/irontec.repo
cat > /etc/yum.repos.d/irontec.repo <<EOF
[copr:copr.fedorainfracloud.org:irontec:sngrep]
name=Copr repo for sngrep owned by irontec
baseurl=https://download.copr.fedorainfracloud.org/results/irontec/sngrep/epel-7-$basearch/
type=rpm-md
skip_if_unavailable=True
gpgcheck=1
gpgkey=https://download.copr.fedorainfracloud.org/results/irontec/sngrep/pubkey.gpg
repo_gpgcheck=0
enabled=1
enabled_metadata=1
EOF
rpm --import http://packages.irontec.com/public.key
yum install sngrep -y
