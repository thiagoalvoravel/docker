FROM node:latest
MAINTAINER Thiago Alvoravel
ENV NODE_ENV=development
COPY /atividade-compose /var/www
WORKDIR /var/www
RUN npm install 
ENTRYPOINT ["npm", "start"]
EXPOSE 3000