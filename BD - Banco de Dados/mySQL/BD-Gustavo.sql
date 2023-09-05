create database Sacolão;
Use   Sacolão;

create table Cliente (
IdCliente int auto_increment primary key,
NomeCliente varchar(40),
CPFcliente varchar(11),
TelefoneCliente varchar (13),
CEPcliente varchar(8),
DataCliente datetime);

create table Assalariado (
IdAssalariado int auto_increment primary key,
NomeAssalariado varchar (40) ,
CPFAssalariado varchar(11),
TelefoneAssalariado varchar (13) , 
DataAssalariado datetime ,
Salario varchar(9),
HoraExpediente time );

create table Fornecedor (
IdFornecedor int auto_increment primary key,
