FROM node:lts-alpine3.10

COPY . .

CMD [ "node", "./app.mjs" ]