#!/bin/bash
wget -N --no-check-certificate https://raw.githubusercontent.com/hankhu666/sys/main/tools/ups && chmod +x ups && mv ups /usr/local/sbin/ && ln -s /usr/local/sbin/ /usr/local/bin/

