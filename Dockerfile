FROM node:16.14.0

WORKDIR /usr/server/server.js

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server/server.js"]
