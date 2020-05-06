const express = require('express');
const app = express();
const handlebars = require('express-handlebars');

// Config
// Template Engine

app.engine('handlebars', handlebars({defaultLayout: 'main'}));
app.set('view engine', 'handlebars');


// conexao
const Sequelize = require('sequelize');
const sequelize = new Sequelize('sistemaDeCadatro', 'root', '', {
  host: 'localhost',
  dialect: 'mysql'
});

// rotas

app.get('/cad', (req, res) => {
  res.render('formulario');
});

app.post('/add', (req, res) => {
  res.send('Formulário enviado com sucesso!');
});



// start server
app.listen(8081, function() {
    console.log("Servidor rodando");
});

