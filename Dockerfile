# Utiliza una imagen de Node.js como base
FROM node:18.18.0

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el resto de los archivos de la aplicación al directorio de trabajo
COPY . .

# Ejecuta el comando "npm run dev" para iniciar la aplicación en modo de desarrollo
CMD ["npm", "run", "dev"]
