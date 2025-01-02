FROM node:18-slim

WORKDIR /app

#COPY package.json /app
COPY frontend-profile/profile/package.json .

RUN npm install

COPY frontend-profile/profile /app

EXPOSE 8082

CMD [ "npm", "start" ]