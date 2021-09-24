FROM node:16-alpine

WORKDIR /app
COPY package.json yarn.lock /app/
RUN yarn

ENV PORT 8080

VOLUME ["/app/radata"]

COPY peer.js /app/
CMD ["node", "peer.js"]
