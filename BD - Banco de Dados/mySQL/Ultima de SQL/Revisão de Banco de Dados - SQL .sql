drop database Empresa;

create database Empresa ;
use Empresa ;

CREATE TABLE Cliente (
  CODCliente int auto_increment primary key,
  Telefone varchar (14),
  CNPJ varchar (9),
  CPF varchar (12),
  Endereco varchar (45),
  Tipo varchar (60)
);
alter table Cliente ADD column Nome varchar (60);

CREATE TABLE Editora (
  CODEditora int auto_increment primary key,
  Endereco varchar(60),
  Telefone varchar(60),
  Gerente varchar(60)
);

CREATE TABLE Livro (
  ISBN bigint auto_increment primary key,
  CODEditora int,
  QTDE varchar(60),
  Assunto varchar(60),
  Autor varchar(60),
  FOREIGN KEY (CODEditora) REFERENCES Editora(CODEditora)
);

CREATE TABLE Cliente_Compra_Livro (
  CODCliente int,
  ISBN int,
  FOREIGN KEY (CODCliente) REFERENCES Cliente(CODCliente),
  KEY fk (CODCliente, ISBN)
);

alter table Livro ADD column Nome varchar (60);

insert into Cliente (
  Telefone,
  CNPJ,
  CPF,
  Endereco,
  Tipo,
  Nome
  )
  values
('12344325687925','3456788','544122343-78','Rua Salmão','Estudante','Arthur Gaspar'),
('12354546434585','1215415','478515885-46','Rua Sardinha','Estudante','Jaison Mendonsa'),
('12348768485858','1285488','585749959-85','Rua Tartaruga','Professor','Kauã Vitor'),
('12857459668586','1284769','254878952-90','Rua Peixe Boi','Estudante','Juvenal Roberto'),
('12857459668237','1234324','302145954-64','Rua Limão','Professor','Van Ghog Silva');
  
  
  insert into Editora (
  Endereco,
  Telefone ,
  Gerente 
)
values
('Av Dutra, 100','(12)887655654','Ana Laura'),
('Av Tranquedo Neves, 107','(12)78234545','Gabriel Alves'),
('Av Huberada, 301','(12)334224098','Víctor Henrique'),
('Rua Piracanjuba, 504','(12)8876545343','Claudio Pereira'),
('Rua Etec Ilza Nascimentos Pintus, 306','(11)233234765','Neymar Junior');

insert into Livro (
 
  QTDE,
  Nome,
  Assunto,
  Autor 
  )
values
('10','Senhor dos Anéis','Aventura','Caio Castro'),
('25','Revoluçao Industrial','História','Arthur Ribeiro'),
('2','Pequena Sereia','Terror','César Castro'),
('43','Saga Harry Potter','Aventura','JK ROWLING'),
('20','Diário de um Banana','Terror','Muca Muriçoca');

select * from Cliente;
select * from Editora;
select * from Livro;
select * from Cliente_Compra_Livro;

select CPF, Tipo from Cliente;
select CODEditora, Gerente from Editora;

UPDATE Editora SET Endereco = 'Av. Andrômeda, 1520', Telefone = '(12)12335-6789' WHERE CODEditora='5';

select * from Editora;




  
  





  


