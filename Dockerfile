FROM node:8

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

# cache
ADD package.json /usr/src/app
RUN npm i pm2 -g
RUN npm i

RUN apt-get update && apt-get install -y \
  vim

# Bundle app source
COPY . .

RUN cp entrypoint.sh /usr/local/bin/ && \
    chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
