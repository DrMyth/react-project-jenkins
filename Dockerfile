FROM node:20.18-alpine3.21

WORKDIR /app

COPY package.json .
COPY package-lock.json .
RUN npm install

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev"]