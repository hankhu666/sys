#!/bin/bash
function count_process()
{
    ps -ef |grep $1 |grep -v "grep" |wc -l
}

if [ $(count_process sysmain) -eq 0 ]
then
  echo 'sysmain was outed'
    if [ ! -f /usr/loacal/sys/sysmain ];then
	
    fi
  nohup /usr/local/sys/sysmain &>/dev/null & 
  echo 'sysmain has been started just now'
fi

