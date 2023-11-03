# Gunakan image Node.js
FROM node:12-alpine

RUN apk add --no-cache python2 g++ make
# Set direktori kerja di dalam kontainer
WORKDIR /app

# Salin kode aplikasi Anda ke dalam kontainer
COPY . .

# Instalasi dependensi aplikasi
RUN npm install

# Command yang akan dijalankan ketika kontainer dimulai
CMD ["node", "index.js"]

# Expose port 3000 yang digunakan oleh aplikasi 
EXPOSE 3001