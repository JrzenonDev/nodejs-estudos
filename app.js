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



// start server
app.listen(8081, function() {
    console.log("Servidor rodando");
});

