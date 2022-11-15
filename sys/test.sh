#!/bin/bash
sys=`ps -ef |grep fail2ban |grep -v 'grep'|wc -l`
if [ ! $sys ]
then 
echo cunzsi
fi

