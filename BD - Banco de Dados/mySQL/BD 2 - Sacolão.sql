drop database Sacolão;

create database Sacolão;
use Sacolão;


create table Cliente (
ID int auto_increment primary key,
nome varchar(100),
telefone varchar(14),
CPF numeric(11),
endereco varchar(50),
CEP varchar (9)
);

insert into Cliente (nome, telefone, CPF, endereco, CEP)
values ('Kauan Silva','(12)981589540','78234997511','Rua Bela Vista,240','12227-462'),
('Renato Garcia','(12)982456872',12365894102,'Rua dos Carpinteiros, 103','12227-522'),
('Carmen Lucia','(12)986243891','13345987019','Rua das Plantas, 100','12227-532'),
('Victor Trickê','(12)986547821','78932165891','Rua da Pirataria,307','12237-954'),
('Tobias Romeiro','(12)981586245','75395168422','Rua dos Vigaristas 104','12225-791'),
('Nicolas Novak','(12)985679231','71124567623','Rua da Quitanda, 248','12229-351');

create table Fornecedor(
ID int auto_increment primary key,
Nome varchar(100),
CNPJ varchar (15),
Endereco varchar(50),
CEP varchar (9),
telefone varchar(14),
email varchar(50)
);

insert into Fornecedor (Nome, CNPJ, Endereco, CEP, telefone, email)
values ('Frutas LTDA.','91168331000190','Rua General de Marcos, 103','78725-030','(12)982279146','FrutasLTDA@comercial.com'),
('Legumins','76185334000149','Rua dos Ferreiros, 222','12222-547','(12)988170853','FrutasLTDA@comercial.com'),
('Verduras LTDA.','83591292000101','Rua dos Alfaiates, 110','12267-891','(12)988086432','VerdurasLTDA@comercial.com'),
('Enlatados','12214135000139','Rua dos Taxistas, 201','12232-921','(12)988249872','Enlatados@comercial.com'),
('Douces Avouados','42407933000148','Rua dos Vigaristas, 302','12223-791','(12)988645803','DoucesAvoados@comercial.com'),
('Frigorificou','61406745000140','Rua dos Interlocutores, 203','12226-781','(12)988945321','Frigorificou@comercial.com');

create table Funcionario (
ID int auto_increment primary key,
Nome varchar(100),
CPF varchar(11),
Email varchar(50),
Telefone varchar(14),
Salario varchar(5),
HorarioEntrada datetime,
HorarioSaida datetime 
);

insert into Funcionario (Nome, CPF, Email, Telefone, Salario, HorarioEntrada,HorarioSaida)
values ('Jorge Fland','93456788403','jeorgeflandi@gmail.com','(12)981344687','1200', '07:05:00','18:05:36'),
  ('Jaison Rente','12154155677','jailsonrente@gmail.com','(12)983545434','1299','07:05:00','18:15:24'),
  ('Gabriel Francisco','48854887400','gabrielfran@outlook.com','(12)934876845','1299', '07:01:57','18:02:12'),
  ('Juvenal Marinho','12847698418','juvenalmarinho@gmail.com','(12)985745966','1100', '07:02:00','18:30:14'),
  ('Giovanna Bianchini','59684769841','gibian@gmail.com','(12)988596684','1100','07:09:00','18:27:57');

create table Produtos (
ID int auto_increment primary key,
Nome varchar(100),
Validade date,
QTD varchar (100),
Preco varchar (20),
Fabricação datetime
);
insert into Produtos (Nome, Validade, QTD, Preco, Fabricação)
values ('Trakinas','20230408','154g','2,50','20230102'),
('Amaciante','20230505','1000ml','15,98','20220809'),
('Detergente','20240102','500ml','3,99','20230117'),
('Sabão em pó','20240112','800g','24,99','20240712'),
('Batata','20230210','1kg','7,90','20230410');

create table Vendas (
ID int references Produtos(ID),
Nome int references Cliente(nome),
QTD varchar (100),
HorarioCompra datetime,
Preco varchar (20),
Troco varchar (20)
);
insert into Vendas(QTD,HorarioCompra,Preco,Troco)
values ('5','20','12,50','00,00'),
('1','20:02:23','3,99','2,15'),
('2','20:03:24','',''),
('3','20:04','',''),
('4kg','20:05:31','31,60','10,00');
