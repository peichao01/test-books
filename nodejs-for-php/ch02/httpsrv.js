var http = require('http');
//var static = require('node-static');
//var file = new static.Server();

http.createServer(function(req, res){
	//file.serve(req, res);
}).listen(8080, '127.0.0.1');
console.log('Server running at http://127.0.0.1:8080');
