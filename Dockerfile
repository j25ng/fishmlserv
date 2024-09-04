#FROM datamario24/python311scikitlearn-fastapi:1.0.0
#FROM python:3.8
#FROM python:3.8.19-slim-bullseye
#FROM python:3.8.19-alpine3.20
FROM j25ng/fishmlserv:0.8.4

WORKDIR /code

#COPY . /code/
COPY src/fishmlserv/main.py /code/
#COPY requirements.txt /code/

# 모델서빙만(의존성의 위 BASE 이미지에서 모두 설치 했다)
#RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
RUN pip install git+https://github.com/j25ng/fishmlserv.git@1.0.0/k

# 모델서빙을 위해 API 구동을 위한 FastAPI RUN
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
