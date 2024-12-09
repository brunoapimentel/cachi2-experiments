FROM localhost/node-yarn

COPY . /app

WORKDIR /app

RUN yarn install

EXPOSE 3000

ENTRYPOINT ["yarn", "exec", "node", "index.js"]
