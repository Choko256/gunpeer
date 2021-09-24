# Use PORT env var to specify the port where you want the server to listen on
FROM node:16-alpine

WORKDIR /app
COPY package.json yarn.lock /app/
RUN yarn

ENV PORT 8080

VOLUME ["/app/radata"]

COPY peer.js /app/
CMD ["node", "peer.js"]
