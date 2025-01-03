FROM node:18-slim

WORKDIR /app

#COPY package.json /app
COPY frontend-photo/photo/package.json /app

RUN npm install

COPY frontend-photo/photo /app

EXPOSE 8083

CMD [ "npm", "start" ]