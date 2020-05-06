const Sequelize = require('sequelize');
const sequelize = new Sequelize('sistemaDeCadatro', 'root', '', {
  host: 'localhost',
  dialect: 'mysql'
});

sequelize.authenticate().then(function() {
  console.log("Conectado com sucesso")
}).catch(function(erro) {
  console.log("Falha ao se conectar: " + erro);
});

const Postagem = sequelize.define('postagens', {
  id: {
    type: Sequelize.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  titulo: {
    type: Sequelize.STRING
  },
  conteudo: {
    type: Sequelize.TEXT
  }
});

//Postagem.sync({force: true}); // Cria a tabela no banco

// cria uma postagem
// Postagem.create({
//   titulo: "Post 01",
//   conteudo: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum amet nam dolorem harum. Nesciunt vero possimus odio, nostrum quis minus cumque hic! Accusantium odio iste nesciunt aliquam sequi iusto saepe."
// });

const Usuario = sequelize.define('usuarios', {
  nome: {
    type: Sequelize.STRING
  },
  sobrenome: {
    type: Sequelize.STRING
  },
  idade: {
    type: Sequelize.INTEGER
  },
  email: {
    type: Sequelize.STRING
  }
});

// Usuario.sync({forde: true}); // Cria a tabela

// cria um user
// Usuario.create({
//   nome: "Jose Roberto",
//   sobrenome: "Oliveira",
//   idade: 35,
//   email: "jrobertoonb@gmail.com"
// })