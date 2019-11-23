#!/bin/bash
echo "Pulling remote"
cd /opt/repo-dev/SysOps/ && git fetch origin && git reset --hard origin/master && git push prod master