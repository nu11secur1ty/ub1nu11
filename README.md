# ub1nu11 samurai LAMP docker
https://hub.docker.com/r/nu11secur1ty/ub1nu11

------------------------------------------------------------------------

![](https://github.com/nu11secur1ty/ub1nu11/blob/master/logo/samurai.jpg)

- ***Apache2.4***
- ***PHP 7***
- ***Maria DB***

-----------------------------------------------------------------------------------

- - - ***Direct run and `shell` access***
```bash
git clone https://github.com/nu11secur1ty/ub1nu11.git
cd ub1nu11
docker-comopse up -d
# Web testing
http://localhost:8080/
http://localhost:8080/info.php
# Shell
docker-compose exec ub1nu11 /bin/bash
```
- - - default user and password:
```
user: opsec
password: Pr#d@TEL#ten#sAd0brEd06l#
```
~~Starting the docker~~

~~```bash~~
~~docker run -d -p 8080:80 --name samurai nu11secur1ty/ub1nu11~~
~~```~~

- MySQL
```bash
bash logininside.sh
/etc/init.d/mysql start
/etc/init.d/mysql status
mysql -uroot -ppassword
```
- Note 
`You can use your IP`!

------------------------------------------------
# Manual

- Getting a source
```bash
git clone https://github.com/nu11secur1ty/ub1nu11.git
```
- Building a docker samurai ub1nu11
```bash
docker build -t nu11secur1ty/ub1nu11 .
```
# Building application
```bash
bash startsamurai.sh
```
# Testing a samurai ub1nu11 docker
- Apache
```url
http://localhost:8080/
```
# This is a custom test
- PHP7
```url
http://localhost:8080/info.php
```

- MysQL
```bash
bash logininside.sh
/etc/init.d/mysql start
/etc/init.d/mysql status
mysql -uroot -ppassword
```

# Stop samurai ub1nu11 docker
```bash
bash stopsamurai.sh
```
# Removing of the already compose ub1nu11 docker image
```bash
docker system prune
docker system prune -a
```
- WARNING: This will remove your already composing `samurai ub1nu11` image and docker from your machine, and from docker ENV!

**Have fun** ***engineers*** ;)
