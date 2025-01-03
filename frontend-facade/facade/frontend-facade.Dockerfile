FROM node:18-slim

ENV NODE_ENV development

WORKDIR /app

#COPY package.json /app
COPY frontend-facade/facade/package.json .

RUN npm install

COPY frontend-facade/facade /app

EXPOSE 8080

CMD [ "npm", "start" ]