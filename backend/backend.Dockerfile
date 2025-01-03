FROM node:18-slim

ENV NODE_ENV development

WORKDIR /app

#COPY package.json package-lock.json ./
COPY backend/package.json backend/package-lock.json ./

RUN npm install

COPY backend .

EXPOSE 3000

CMD [ "npm", "run", "dev" ]