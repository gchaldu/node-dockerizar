FROM node:16-bullseye

WORKDIR /app

#Copio desde la raiz hacia app
COPY . .

#instalar dependencias
RUN npm install

#como expongo el puerto 3000 tengo que decirlo
EXPOSE 3000

#ejecutamos tenemos dos formas npm start o con CMD
#RUN npm start

CMD ["npm", "start"]

#abrimos la terminal y escribimos:
#docker build . -t node-api-leifer
