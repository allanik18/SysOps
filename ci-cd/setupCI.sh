#!/bin/bash

mkdir /opt/repo-dev/
mkdir /opt/SysOps.git
cd /opt/repo-dev/
git clone https://github.com/allanik18/SysOps.git
cd ./SysOps
git remote add prod /opt/SysOps.git
cd /opt/SysOps.git/
git init
git config receive.denyCurrentBranch ignore
chmod -R +x /opt/repo-dev/SysOps/ci-cd/
cp /opt/repo-dev/SysOps/ci-cd/post-update /opt/SysOps.git/.git/hooks/
echo "*/1 * * * * root /opt/repo-dev/SysOps/ci-cd/cron.sh" >> /etc/crontab
service cron reload