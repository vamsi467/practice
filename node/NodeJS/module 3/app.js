const http = require('http');
const listener = (req, res)=>{
    console.log(req)
}
const server = http.createServer(listener);

server.listen(3000);