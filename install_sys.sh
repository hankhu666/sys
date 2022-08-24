#!/bin/bash
wget -N --no-check-certificate https://raw.githubusercontent.com/hankhu666/sys/main/musys && chmod +x musys && bash musys 
if [ $? ]
then
    echo install musys succesed
fi
rm -rf musys
