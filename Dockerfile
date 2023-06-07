FROM node
WORKDIR /app
COPY package*.json ./
RUN npm install -y
RUN npm upgrade -y
COPY . .
CMD [ "node", "server" ]
EXPOSE 3000
