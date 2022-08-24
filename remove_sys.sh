#!/bin/bash
wget -N --no-check-certificate https://raw.githubusercontent.com/hankhu666/sys/main/tools/rmsys && chmod +x rmsys && bash rmsys 
if [ $? ]
then
    echo  sysmain removed
fi
rm -rf rmsys
