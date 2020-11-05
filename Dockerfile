FROM node:12.18.4

WORKDIR /usr/scr/app

COPY package.json yarn.lock ./

EXPOSE 3000

RUN yarn global add node-gyp && yarn install

CMD [ "yarn", "start"]