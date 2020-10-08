#imagem base
FROM node:latest

#mantenedor da imagem
MAINTEINER Thiago Alvoravel

#copiar conteúdo da pasta atual para a pasta destino no container
COPY. /var/www

#diretório inicial do container
WORKDIR /var/www

#variável de ambiente
ENV NODE_ENV=production
ENV PORT=3000

#comando que será executado durante o build da imagem
RUN npm install

#comando que será executado após o build da imagem
ENTRYPOINT npm start

#expor a porta
EXPOSE $PORT
