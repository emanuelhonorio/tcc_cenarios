const fs = require('fs')

let sql = `
DROP DATABASE IF EXISTS pog;

CREATE DATABASE IF NOT EXISTS pog;

USE pog;

CREATE TABLE IF NOT EXISTS categorias (
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
  nome TEXT NOT NULL
) Engine = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS produtos (
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
  nome TEXT NOT NULL,
  preco DOUBLE NOT NULL,
  descricao TEXT,
  fk_categoria BIGINT(20) NOT NULL,

  FOREIGN KEY(fk_categoria) REFERENCES categorias(id)
) Engine = InnoDB DEFAULT CHARSET = utf8;
`;

sql  += `
# Insert Categorias
`

// insert 100 categorias
for (let i = 0; i < 100; i++) {
  sql += `
INSERT INTO categorias(nome) values('categoria_${i+1}');`
}

sql  += `

# Insert Produtos
`

// insert 100 produtos random categoria 1-100
for (let i = 0; i < 100; i++) {
  let rdnCategoria = 1 + Math.floor(Math.random() * 100)
  sql += `
INSERT INTO produtos(nome, preco, descricao, fk_categoria) values('produto_${i+1}', ${Math.floor(Math.random() * 5000)}, 'descricao...', ${rdnCategoria});`
}

fs.writeFile('pog.sql', sql, function(err) {
  if (err) {
    console.log(err)
  } else {
    console.log('DONE!')
  }
})
