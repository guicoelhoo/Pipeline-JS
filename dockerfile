#treinando espanhol e docker :)
 
#1. Usar una imagen base de Node.js
FROM node:24-alpine
 
#2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app
 
#3. Copiar los archivos de dependencia e instalar
COPY package*.json ./
RUN npm install
 
#4. Copiar el resto de los archivos de la aplicación al contenedor
COPY . .
 
#5. Cual puerta se va a usar para acceder a la aplicación
EXPOSE 3000
 
#6. Comando para iniciar la aplicación
CMD ["npm", "start"]