FROM node:16-alpine
ENV TZ=America/Sao_Paulo
RUN mkdir -p /home/node/maratona-back
WORKDIR /home/node/maratona-back
COPY ./package.json ./
COPY ./src ./src
RUN npm install \
    && npm audit fix --force \
    && npm ci
EXPOSE 3000
CMD [ "node", "./src/index.js" ]