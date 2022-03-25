# syntax=docker/dockerfile:1
FROM node:17-alpine3.14

WORKDIR /ddpr/app/frontend

ENV PATH /ddpr/app/frontend/node_modules/.bin:$PATH

COPY package.json ./
COPY package-lock.json ./

COPY . ./
RUN chmod +x start_frontend.sh build_frontend.sh

RUN /bin/sh build_frontend.sh