# fishmlserv

### Deploy
![deploy_image](https://github.com/user-attachments/assets/24901b30-7704-4d0e-bdd4-c9b9782356db)

### Run
- dev
- http://localhost:8000/docs
```bash
# uvicorn --help
$ uvicorn src.fishmlserv.main:app --reload
```
- prd
```bash
$ uvicorn src.fishmlserv.main:app --host 0.0.0.0 --port 8949
```

### Docker
```
$ sudo docker build -t fishmlserv:0.4.0 .
$ sudo docker run -d --name fmlserv-040 -p 8877:8765 fishmlserv:0.4.0
$ sudo docker ps
CONTAINER ID   IMAGE              COMMAND                  CREATED         STATUS         PORTS                                       NAMES
3b34ff0aac1d   fishmlserv:0.7.0   "uvicorn main:app --…"   9 minutes ago   Up 9 minutes   0.0.0.0:7799->8080/tcp, :::7799->8080/tcp   fml071

# docker 컨테이너 안으로...
$ sudo docker exec -it fml071 bash

# docker 컨테이너 안에서 ...
root@3b34ff0aac1d:/code# cat /etc/os-release
PRETTY_NAME="Debian GNU/Linux 12 (bookworm)"
NAME="Debian GNU/Linux"
VERSION_ID="12"
VERSION="12 (bookworm)"
VERSION_CODENAME=bookworm
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"

# 다시 호스트OS(WSL) 로 exit
root@3b34ff0aac1d:/code# exit

# 로그 확인
$ sudo docker logs -f <CONTAINER ID|NAMES>
```

### LBw
```bash
$ sudo docker build -t ml-lb:1.5.0 LB/
$ sudo docker run --name nginx_lb-3 -d -p 8765:80 --link ml-1 --link ml-2 --name lb-2 ml-lb:1.5.0
```

### Fly.io
```
$ fly launch --no-deploy
$ flyctl launch --name <<uniq_name>>
$ flyctl scale memory 256
$ flyctl deploy 
```
### Ref
- https://curlconverter.com/python
