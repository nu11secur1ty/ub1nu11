# ub1nu11
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
- PHP7
```url
http://localhost:8080/info.php
```

# Login in docker
```bash
bash logininside.sh
```
- Output must be
```xml
root@252a679b8104:/# 
root@252a679b8104:/# 
root@252a679b8104:/# 
root@252a679b8104:/# 
```
# Stop samurai ub1nu11 docker
```bash
bash stopdocker.sh
```
# Removing of the already compose ub1nu11 docker image
```bash
docker system prune
docker system prune -a
```
- WARNING: This will remove your already composing `samurai ub1nu11` image and docker from your machine, and from docker ENV!

**Have fun** ***engineers*** ;)
