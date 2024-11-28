# Usa una imagen base de Node.js
FROM node:22

# Establece el directorio de trabajo en el contenedor
WORKDIR /src

# Copia el archivo package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto de los archivos de la aplicación
COPY . .

# Expone el puerto en el que corre tu aplicación
EXPOSE 4000

# Define el comando para iniciar la aplicación
CMD ["node", "index.js"]
