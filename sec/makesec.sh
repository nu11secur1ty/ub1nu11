#!/bin/sh
echo "Give username"
read user
echo "Give password"
read pass
echo "Give storesec_file"
read store
# Protect 
htpasswd -b -c $store $user $pass
  exit 0;
