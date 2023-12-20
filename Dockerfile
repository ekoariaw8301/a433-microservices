# Menggunakan base image yang sesuai dengan aplikasi Anda
FROM node:18-alpine as builder

# Menentukan direktori kerja di dalam container
WORKDIR /app

# Menyalin package.json dan package-lock.json ke dalam direktori kerja
COPY package*.json ./

# Menginstall dependensi aplikasi
RUN npm install

# Menyalin semua file ke dalam direktori kerja
COPY . .

# Menentukan port yang akan digunakan oleh aplikasi
EXPOSE 3000

# Perintah untuk menjalankan aplikasi ketika container dijalankan
CMD ["npm", "start"]