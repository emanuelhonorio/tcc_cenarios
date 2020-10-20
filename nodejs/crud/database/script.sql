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