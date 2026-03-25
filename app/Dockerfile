FROM node:22-bullseye

WORKDIR /app

COPY . .
RUN npm install
RUN npm audit fix
RUN npm run build