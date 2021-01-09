#!/bin/sh
echo "Give username"
read user
echo "Give password"
read pass
# Protect 
htpasswd -b -c protect $user $pass
  exit 0;
