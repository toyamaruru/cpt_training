FROM python:3.10

WORKDIR /

COPY . .

RUN pip install -r requirements.txt