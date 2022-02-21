FROM node:16

WORKDIR /src/app

COPY package.json .
COPY package-lock.json .
RUN npm install

COPY . .
RUN npm run build

CMD ["npm run"]
