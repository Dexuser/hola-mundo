# Imagen base
FROM node:18

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer puerto
EXPOSE 3000

# Comando para correr la app
CMD ["node", "app.js"]
