FROM node:12.18.4

WORKDIR /app

COPY package.json yarn.lock ./

COPY . .

EXPOSE 3000

RUN yarn global add node-gyp && yarn install

CMD [ "yarn", "start"]
