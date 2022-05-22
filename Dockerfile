FROM node
RUN apt update
RUN apt install net-tools -y
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm i
COPY . .
EXPOSE 80
CMD [ "node", "index.js" ]