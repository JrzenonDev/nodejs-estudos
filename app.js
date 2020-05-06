const express = require('express');
const app = express();
const handlebars = require('express-handlebars');
const bodyParser = require('body-parser');
const Sequelize = require('sequelize');

// Config
// Template Engine

app.engine('handlebars', handlebars({defaultLayout: 'main'}));
app.set('view engine', 'handlebars');

// Body Parser
app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());


// conexao
const sequelize = new Sequelize('sistemaDeCadatro', 'root', '', {
  host: 'localhost',
  dialect: 'mysql'
});

// rotas

app.get('/cad', (req, res) => {
  res.render('formulario');
});

app.post('/add', (req, res) => {
  res.send("Texto: " + req.body.titulo + " Conteudo: " + req.body.conteudo);
});



// start server
app.listen(8081, function() {
    console.log("Servidor rodando");
});

