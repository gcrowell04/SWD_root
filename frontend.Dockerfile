# Dockerfile for Eleventy frontend
FROM node:18-alpine

WORKDIR /site

COPY frontend/ /site/

RUN npm install && npx eleventy

CMD ["npx", "http-server", "_site", "-p", "8080"]
