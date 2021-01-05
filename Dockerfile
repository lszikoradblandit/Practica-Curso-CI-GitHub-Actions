# MAJOR.MINOR.PATCH
FROM node:12.18.4-buster-slim
ENV PORT 80
ENV MONGO_URI mongodb://host.docker.internal:27017/finanzas
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY ./ /app
ENTRYPOINT npm start
EXPOSE 80