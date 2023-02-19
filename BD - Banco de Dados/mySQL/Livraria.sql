create database Livraria;
use Livraria;
drop database Livraria;

CREATE TABLE `Cliente` (
  `CODCliente` int auto_increment primary key,
  `Telefone` varchar (14),
  `CNPJ` varchar (9),
  `CPF` varchar (12),
  `Endereco` varchar (45),
  `Tipo` varchar (60),
  KEY `pk` (`CODCliente`)
);

CREATE TABLE `Editora` (
  `CODEditora` int auto_increment primary key,
  `Endereco` varchar(60),
  `Telefone` varchar(60),
  `Gerente` varchar(60),
  KEY `pk` (`CODEditora`)
);

CREATE TABLE `Livro` (
  `ISBN` int auto_increment primary key,
  `CODEditora` int,
  `QTDE` varchar(60),
  `Assunto` varchar(60),
  `Autor` varchar(60),
  FOREIGN KEY (`CODEditora`) REFERENCES `Editora`(`CODEditora`),
  KEY `pk` (`ISBN`),
  KEY `fk` (`CODEditora`)
);

CREATE TABLE `Cliente_Compra_Livro` (
  `CODCliente` int ,
  `ISBN` int,
  FOREIGN KEY (`CODCliente`) REFERENCES `Cliente`(`CODCliente`),
  FOREIGN KEY (`ISBN`) REFERENCES `Livro`(`ISBN`),
  KEY `fk` (`CODCliente`, `ISBN`)
);

insert into `Cliente` (
  Nome ,
  Telefone,
  CNPJ,
  CPF,
  Endereco,
  Tipo
  )
  
  values
  ('Jorge','123443256879','3456788','Rua Salmão','Estudante'),
  ('Jaison','12354546434','1215415','Rua Sardinha','Estudante'),
  ('Gabriel','12348768485','1285488','Rua Tartaruga','Professor'),
  ('Juvenal','12857459668','1284769','Rua Peixe Boi','Estudante');
