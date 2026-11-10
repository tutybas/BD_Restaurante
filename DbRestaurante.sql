CREATE DATABASE bdrestaurante
USE bdrestaurante;
CREATE TABLE cliente (
    codigo          INT AUTO_INCREMENT PRIMARY KEY,
    cpf             CHAR(11),
    nome            VARCHAR(100),
    dataNascimento  DATE,
    email           VARCHAR(100),
    telefone        VARCHAR(20)
);

CREATE TABLE formaPagamento (
    codigoPagamento INT AUTO_INCREMENT PRIMARY KEY,
    forma           VARCHAR(50)
);

CREATE TABLE garcom (
    codigo          INT AUTO_INCREMENT PRIMARY KEY,
    nome            VARCHAR(100),
    horarioTrabalho VARCHAR(50)
);

CREATE TABLE categoria (
    codigo          INT AUTO_INCREMENT PRIMARY KEY,
    nome            VARCHAR(50) 
);

CREATE TABLE cardapio (
    codigo          INT AUTO_INCREMENT PRIMARY KEY,
    nome            VARCHAR(100),
    preco           DECIMAL(10,2),
    unidade         VARCHAR(20),
    codigoCategoria INT,
    FOREIGN KEY (codigoCategoria) REFERENCES categoria (codigo)
);

CREATE TABLE pedido (
    numeroVenda     INT AUTO_INCREMENT PRIMARY KEY,
    data            DATETIME DEFAULT CURRENT_TIMESTAMP,
    valorTotal      DECIMAL(10,2),
    numeroPessoas   INT,
    codigoCliente   INT,
    codigoPagamento INT,
    CONSTRAINT fk_pedido_cliente
        FOREIGN KEY (codigoCliente) REFERENCES cliente (codigo),
    CONSTRAINT fk_pedido_pagamento
        FOREIGN KEY (codigoPagamento) REFERENCES formaPagamento (codigoPagamento)
);

CREATE TABLE itemPedido (
    numeroItem      INT AUTO_INCREMENT PRIMARY KEY,
    quantidade      INT,
    valorUnitario   DECIMAL(10,2),
    valorTotalItem  DECIMAL(10,2),
    numeroVenda     INT,
    codigoGarcom    INT,
    codigoCardapio  INT,
    CONSTRAINT fk_item_pedido
        FOREIGN KEY (numeroVenda) REFERENCES pedido (numeroVenda)
        ON DELETE CASCADE,
    CONSTRAINT fk_item_garcom
        FOREIGN KEY (codigoGarcom) REFERENCES garcom (codigo),
    CONSTRAINT fk_item_cardapio
        FOREIGN KEY (codigoCardapio) REFERENCES cardapio (codigo)
);
