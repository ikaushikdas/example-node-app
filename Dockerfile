FROM node:19-alpine3.16
WORKDIR /app
#RUN chmod -R ug+rw app
COPY package-lock.json /app
COPY package.json /app
RUN npm install
COPY . /app
EXPOSE 3020
CMD node index.js