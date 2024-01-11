#!/bin/bash
set -e

date -u

DIR=$(dirname $(readlink $0))
cd $DIR

echo "Install $USER anacron folders..."
mkdir -pv ~/anacron/{daily,hourly,monthly,weekly}
mkdir -pv ~/.anacron/{etc,spool}
ln -v anacrontab ~/.anacron/etc/anacrontab
crontab cron.jobs
echo "Install $USER anacron folders... done"
