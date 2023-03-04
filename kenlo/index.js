const express = require('express');
const app = express();

app.use((req, res, next) => {
  if (req.headers.host === 'localhost:3000' || req.headers.host === 'localhost' ) {
    /*
    Para fins de testar se o código funciona foi feita a verificação com "localhost:3000",
    porém se fosse em produção, a verificação acima seria req.headers.host === 'kenlo.com.br'
    */
    if (req.url.includes('kenlo.com.br')) {
      if (req.url.includes('.br/')) {
        const urlEdit = req.url.split('br/');
        if(urlEdit.length > 1){
          return redirectKenlo(res, urlEdit[1]);
         }
      }
      return redirectKenlo(res);
    }
    
    return pageNotFound(res);
  }
  next();
});


function redirectKenlo(res, params) {
  if (params != null) {
    if (params.includes('lista')) {
      return buildReturn(res);
    }
    return res.redirect(`https://www.kenlo.com.br/${params}`);
  }
  res.redirect(`https://www.kenlo.com.br`);
}

function pageNotFound(res) {
  res.send('Desculpe, não encontramos nenhuma página com este endereço');
}

function buildReturn(res) {
  const listReturn = {
    "total": 10,
    "items": [
      {
        "id": 1,
        "cidade": "Campinas",
        "latitude": "-22.8951606",
        "longitude": "-47.1711205, 11",
    },
      {
        "id": 2,
        "cidade": "Valinhos",
        "latitude": "-22.9860169",
        "longitude": "-47.0888407"
      }
    ]
  };
  res.send(listReturn);
}

app.listen(3000, () => {
  console.log('Servidor iniciado na porta 3000!');
});
