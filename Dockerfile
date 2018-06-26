FROM node:8-alpine

WORKDIR /usr/src/app

RUN apk -U add git
RUN npm install -g gulp bower polymer-cli --unsafe-perm

COPY bower.json .
RUN bower install --allow-root

COPY . .

EXPOSE 8080
CMD node env.js && polymer serve --port 8080 --hostname 0.0.0.0 -v