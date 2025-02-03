FROM node:18-alpine

WORKDIR /app

COPY package-lock.json package.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
