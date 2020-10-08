FROM node:12

COPY . .

RUN apt-get update
RUN apt-get -y install yarn
RUN yarn install
RUN yarn build

EXPOSE 3000

CMD yarn start
