FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN mkdir /app

WORKDIR /app

RUN pip install -U pip setuptools

COPY requirements.txt /app

RUN pip install -r /app/requirements.txt

COPY . /app

EXPOSE 8000
