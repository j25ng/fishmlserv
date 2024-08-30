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
```

### Ref
- https://curlconverter.com/python
