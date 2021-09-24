FROM node:16-alpine
LABEL maintainer "pro@chaksoft.fr"

WORKDIR /app
COPY package.json yarn.lock /app/
RUN yarn

ENV PORT 8080

COPY peer.js /app/
CMD ["node", "peer.js"]
