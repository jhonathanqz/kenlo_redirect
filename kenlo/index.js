const http = require('http');

const server = http.createServer((req, res) => {
    if (req.url === '/') {
      redirectKenlo(res);
      res.end();
    } else if (req.url.includes('kenlo.com.br')) {
        if(req.url.includes('.br/')){
            const urlEdit = req.url.split('br/');
            if(urlEdit.length > 1){
             //   redirectKenlo(res, urlEdit[1]);
                return
            }
        }
        redirectKenlo(res);
        
      res.end();
    } else {
      res.write('Página não encontrada.');
      res.end();
    }
  });

  function redirectKenlo(res, params) {
    if(params != null){
        res.writeHead(302, {
            'Location': 'https://www.kenlo.com.br/' + params
          });
        return;
    }
    res.writeHead(302, {
        'Location': 'https://www.kenlo.com.br'
      });
  }
  
  server.listen(3000, () => {
    console.log('Servidor iniciado na porta 3000');
  });

  