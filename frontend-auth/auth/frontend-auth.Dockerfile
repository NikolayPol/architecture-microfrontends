FROM node:18-slim

WORKDIR /app

#COPY package.json /app
COPY frontend-auth/auth/package.json .

RUN npm install

COPY frontend-auth/auth /app

EXPOSE 8081

CMD [ "npm", "start" ]