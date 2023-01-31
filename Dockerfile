FROM node:19-alpine3.16
WORKDIR /app
#RUN chmod -R ug+rw app
# COPY package-lock.json /app
# COPY package.json /app
COPY . /app
RUN npm install
EXPOSE 5000
CMD node index.js