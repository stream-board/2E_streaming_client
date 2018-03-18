FROM node:9


RUN mkdir /client
WORKDIR /client

COPY . /client
COPY package.json /client
COPY package-lock.json /client
RUN npm install
RUN npm install socket.io express
#CMD ["node", "signaling-server.js"]
CMD ["node", "index.js"]
