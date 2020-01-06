#!/bin/bash
if timeout 1 ping -c 1 -w 1 google.com &> /dev/null
then
  echo "Compromised. Internet Available"
else
  echo "Secure. No Internet"
  /usr/bin/kpcli --kdb=/data/kp.kdbx
fi
