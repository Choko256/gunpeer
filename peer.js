const http = require('http')
const Gun = require('gun')

const server = http.createServer(Gun.serve(__dirname)).listen(parseInt(process.env.PORT || '8080', 10))
Gun({ web : server })
