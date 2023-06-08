FROM ubuntu:latest

WORKDIR /app

COPY package*.json ./
RUN apt-get update && \
    apt-get install -y nodejs npm

COPY . .
RUN npm install sequelize sqlite3 && \
    npm install express

EXPOSE 3000

CMD ["npm", "start", "--host=0.0.0.0", "--port=3000"]

