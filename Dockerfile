# Usa una imagen base de Node.js 16 en versión ligera (alpine).
FROM node:16-alpine

# Establece el directorio de trabajo dentro del contenedor en /app.
WORKDIR /app

# Copia los archivos package.json y package-lock.json para instalar dependencias.
COPY package*.json ./

# Instala las dependencias definidas en package.json.
RUN npm install

# Copia el resto del código de la aplicación al contenedor.
COPY . .

# Expone el puerto 3000, que es donde la aplicación estará corriendo.
EXPOSE 3000

# Define el comando por defecto que se ejecutará cuando el contenedor se inicie.
CMD ["npm", "start"]
