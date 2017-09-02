FROM mhart/alpine-node

# Set workdir, nanti semua command akan di jalankan di root folder ini

WORKDIR /src

# Kopi package.json ke folder /src

COPY package.json .

# install dependency ke source code image kita
RUN npm i

# Kopi source code yang ada di current folder ke folder /src

COPY . .

# RUN aplikasi kita di port image dengan port 9000
EXPOSE 9000

# Eksekusi perintah yang di perlukan,

CMD ["npm", "start"]
