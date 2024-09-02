#FROM python:3.8
# 용량 작은 버전
FROM python:3.8.19-slim-bullseye #

WORKDIR /code

COPY . /code/
#COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

CMD ["uvicorn", "src.fishmlserv.main:app", "--host", "0.0.0.0", "--port", "8080"]
