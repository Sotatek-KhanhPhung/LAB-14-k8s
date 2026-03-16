FROM node:24-alpine

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm ci

COPY . . 

EXPOSE 8080

CMD ["node", "server.js"]

