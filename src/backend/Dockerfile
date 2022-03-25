# syntax=docker/dockerfile:1
FROM python:3.9-alpine

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /ddpr/app
COPY requirements.txt /ddpr/app/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /ddpr/app/

COPY .env ./backend.env
RUN chmod +x start_backend.sh
