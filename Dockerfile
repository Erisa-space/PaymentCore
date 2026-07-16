FROM node:22-alpine
ENV TZ="Europe/Moscow"
WORKDIR /app

COPY package.json ./
COPY yarn.lock ./
RUN yarn install --network-timeout 100000

COPY . .

RUN yarn build
CMD ["yarn", "start"]
