# Utilizar la imagen base de Node.js 14
FROM node:14

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /App

# Copiar el código del cliente al directorio de trabajo
COPY . ./server

# Instalar las dependencias del cliente
RUN cd server && npm install

# Exponer el puerto utilizado por el cliente
EXPOSE 3000

# Iniciar el cliente
CMD ["sh", "-c", "cd server && npm start"]
