#!/bin/sh
# Protect 
htpasswd -b -c /etc/apache2/secret opsec password
