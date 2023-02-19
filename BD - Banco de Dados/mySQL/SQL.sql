create database sacolao;
drop database sacolao;
use sacolao;
create table cliente (
codigoCliente int auto_increment primary key,nomedoCliente varchar (100),
enderecoCliente varchar (100),
cidadeCliente   varchar (100),
estadoCliente   varchar (2),
cepCliente      varchar (9),
datanascimentoCliente datetime
);
alter table cliente add RG varchar (20);
alter table cliente add CPF varchar (15);
alter table cliente add email varchar (50);
alter table cliente add telefone varchar (32);
alter table cliente add nomeCliente varchar (100);
alter table cliente add bairroCliente varchar (51);
insert into cliente (
nomeCliente,
enderecoCliente,
bairroCliente,
cidadeCliente,
estadoCliente,
cepCliente
 )
Values 
 ('João Vitor da Silva ', 'Rua do céu azul, 201','Nova Onda','SJC','SP','12222-222'),('Cleiton Silva Pintos', 'Rua do Peixonauta Céu, 333','Disney Landia','SJC','SP','16666-666'),('Maria Joana Pereira dos Santos', 'Rua dos Sapateiros,509','Centro','SJC','SP','12222-222'),('Claudineia ', 'Rua Rio do Peixe, 131','Altos Da Vila Paiva','SJC','SP','12213-134'),('João da Silva', 'Rua do céu azul, 201','Nova Onda','SJC','SP','12222-222'),('Alex Gabriel Santos da Cruz', 'Rua do Anjos, 111','Novo Horizonte','SJC','SP','12225-854');

create table produto (
codigoProduto int auto_increment primary key,nomedoProduto varchar (100),
nomeProduto varchar (40),
pesoProduto varchar (25),
precoProduto numeric (9,2),
estoqueProduto numeric (9),
datafabricacaoProduto datetime,
datavencimentoProdto datetime
);
insert into produto (
nomeProduto,
pesoProduto,
precoProduto,
estoqueProduto,
datafabricacaoProduto,
datavencimentoProduto 
);
Values ('Pera','0,100','R$3,00','463','2022.07.15','2022.08.21'),('Laranja','0,200','R$2,50','520','2022.07.15,'2022.09.21),('Melância','4,000','R$12,00','2022.07.22','2022.09.26');


create table funcionario (
codigoFuncionario int auto_increment primary key,nomeFuncionario varchar (100),
enderecoFuncionario varchar (100),
cargoFuncionario varchar (50),
cidadeFuncionario varchar (100),
estadoFuncionario varchar (2),
cepFuncionario varchar (9),
RGFuncionario varchar (20),
telefoneFuncionario varchar (32),
emailFuncionario varchar (50),
salarioFuncionario numeric (9,2),
horariosaidaFuncionaro datetime,
horarioentradaFuncionario datetime
);

create table fornecedor (
codigoFornecedor int auto_increment primary key, nomedoFornecedor varchar (100),
nomeFornecedor varchar (100),
cepFornecedor varchar (100),
CNPJFornecedor varchar (23),
RGFornecedor varchar (20),
emailFornecedor varchar (50),
telefoneFornecedor varchar (50),
enderecoFornecedor varchar (100),
cidadeFornecedor varchar (100)
);




