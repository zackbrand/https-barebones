FROM node:lts-alpine3.10

COPY . .

ENTRYPOINT [ "/docker-entrypoint.sh", "https" ]