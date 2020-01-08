#!/bin/bash
if timeout 1 ping -c 1 -w 1 google.com &> /dev/null
then
  echo "Compromised. Internet Available"
else
  echo "Secure. No Internet"
  echo "Opening kdbx file /data/$1"
  /usr/bin/kpcli --kdb=/data/$1
fi
