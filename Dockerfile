FROM node:21.2-alpine3.18

# WORKDIR create the directory and then execute cd
WORKDIR /home/container

COPY ./package.json ./package-lock.json ./
RUN npm ci

COPY . .
