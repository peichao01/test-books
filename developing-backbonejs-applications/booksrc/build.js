var vars = require('var');
var fs = require('fs');

var reg = {
	syntax: /(\{\{.*?\}\})/g
	//syntaxCnt: /\{\{(.*?)\}\}/g
};

var path = __dirname;
//console.log(path);
fs.readdir(path, function(err, files){
	//console.log(files);
	files.forEach(function(filename){
		if(vars.appFiles.indexOf(filename) != -1) return;
		//console.log(filename);
		
		var filepath = path + '/' + filename;
		fs.readFile(filepath, 'utf8', function(err, data){
			//console.log(data);
			var datas = data.split(reg.syntax);
			var content = [];
			datas.map(function(str){
				if(str.match(reg.syntax)){
					var sentence = str.replace(/^\{\{/,'').replace(/\}\}$/,'')
					
					
				}else{
					return str;
				}
			});
		});
	});
});
