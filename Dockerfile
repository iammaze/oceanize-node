FROM node:lts-alpine
LABEL author="Oceanize"
LABEL maintainer="Oceanize Inc<www.oceanize.co.jp>"
LABEL oceanize="true"

# install simple http server for serving static content
RUN npm install -g http-server

# install npm reverse proxy
RUN npm install --global @cedx/reverse-proxy

# make the 'app' folder the current working directory
WORKDIR /app
