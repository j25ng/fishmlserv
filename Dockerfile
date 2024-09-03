#FROM datamario24/python311scikitlearn-fastapi:1.0.0
FROM python:3.8
#FROM python:3.8.19-slim-bullseye
#FROM python:3.8.19-alpine3.20

WORKDIR /code

#COPY . /code/
COPY src/fishmlserv/main.py /code/
#COPY requirements.txt /code/

#RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
RUN pip install git+https://github.com/j25ng/fishmlserv.git@0.8/hub

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
