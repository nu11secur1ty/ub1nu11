#!/usr/bin/bash
# @nu11secur1ty

echo "Give the new user"
	read user
htpasswd /etc/nginx/conf.d/kibana.htpasswd $user
	  exit 0
