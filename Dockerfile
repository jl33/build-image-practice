FROM node:16-alpine

EXPOSE 3000

CMD ["yarn","dev","-p","3000"]

RUN apk add --update --no-cache \
    libc6-compat

COPY . .

RUN yarn install

