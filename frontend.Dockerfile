FROM node:18-alpine

WORKDIR /app

COPY frontend/ /app/

RUN npm install && npx eleventy

CMD ["npx", "http-server", "_site", "-p", "8080"]
