FROM node:16

WORKDIR /app

# Copia o arquivo package.json para o diretório /app
COPY ./package.json ./app

# Instala as dependências do projeto
RUN npm install

# Copia todos os arquivos do projeto
COPY . .

EXPOSE 3000

CMD ["npm", "start"]




