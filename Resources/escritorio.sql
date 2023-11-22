-- (Re) Cria banco de dados de desenvolvimento

-- Apagar o banco de dados caso ele exista;

DROP DATABASE IF EXISTS escritorio;

-- Criar o banco de dados
CREATE DATABASE escritorio CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

--Selecionar escritoio
USE escritorio;


--criar tabela advogado
create table advogado(
  idadv INT primary key auto_increment,
  dataadv TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
  oab VARCHAR (15) NOT NULL,
  nome VARCHAR (127) NOT NULL,
  telefone VARCHAR (31) NOT NULL,
  statusadv ENUM("on", "off") DEFAULT "on"
);


--criar tabela cliente
create table cliente(
  idcliente INT primary key auto_increment,
  datacliente TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  nome VARCHAR (127) NOT NULL,
  telefone VARCHAR (31) NOT NULL,
  statuscliente ENUM("on", "off") DEFAULT "on"
);

-- insere dados advogado

insert into advogado(oab, nome, telefone) values
('6666666666', 'Amanda silva', '(21)1111111111'), 
('9999999999', 'Ana Carolina', '(21)2222222222'),
('4444444444', 'Antonia Souza', '(21)3333333333');

-- insere dados cliente

insert into cliente(nome, telefone) values
('Carla silva', '(21)7485-9612'), 
('Maria Carolina', '(21)2123-6547'),
('Rodrigo Souza', '(21)2536-1498');