# Usa la imagen oficial de Node.js como imagen base
FROM node:22-alpine3.19

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de la aplicación al directorio de trabajo
COPY . .

# Expone el puerto en el que la aplicación se ejecutará
EXPOSE 3000

# Define el comando de entrada para ejecutar la aplicación
CMD ["node", "src/app.js"]
