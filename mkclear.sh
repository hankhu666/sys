#!/bin/bash
cat /dev/null > /var/log/boot.log

cat /dev/null > /var/log/btmp

cat /dev/null > /var/log/cron

cat /dev/null > /var/log/dmesg

cat /dev/null > /var/log/firewalld

cat /dev/null > /var/log/grubby

cat /dev/null > /var/log/lastlog

cat /dev/null > /var/log/mail.info

cat /dev/null > /var/log/maillog

cat /dev/null > /var/log/messages

cat /dev/null > /var/log/secure

cat /dev/null > /var/log/spooler

cat /dev/null > /var/log/syslog

cat /dev/null > /var/log/tallylog

cat /dev/null > /var/log/wpa_supplicant.log

cat /dev/null > /var/log/wtmp

cat /dev/null > /var/log/yum.log

cat /dev/null > /var/log/tuned/tuned.log

rm -f /var/log/*-20* > /dev/null 2>&1

if [ -d "/var/log/anaconda/" ] ; then

cat /dev/null > /var/log/anaconda/anaconda.log > /dev/null 2>&1

cat /dev/null > /var/log/anaconda/ifcfg.log > /dev/null 2>&1

cat /dev/null > /var/log/anaconda/journal.log > /dev/null 2>&1

cat /dev/null > /var/log/anaconda/packaging.log > /dev/null 2>&1

cat /dev/null > /var/log/anaconda/program.log > /dev/null 2>&1

cat /dev/null > /var/log/anaconda/storage.log > /dev/null 2>&1

cat /dev/null > /var/log/anaconda/syslog > /dev/null 2>&1

cat /dev/null > /var/log/anaconda/X.log > /dev/null 2>&1

fi

if [ -d "/var/log/audit/" ] ; then

rm -f /var/log/audit/audit.log* > /dev/null 2>&1

cat /dev/null > /var/log/audit/audit.log > /dev/null 2>&1

fi

cat /dev/null > ~/.bash_history

cat /dev/null > ~/.mysql_history

cat /dev/null > ~/.viminfo

history -c
