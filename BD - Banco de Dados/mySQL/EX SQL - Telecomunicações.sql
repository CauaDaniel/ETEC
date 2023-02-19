create database atento;
drop database atento;
use atento;
create table cliente (
codigoCliente int auto_increment primary key,
nomedoCliente varchar (100),
cpfCliente varchar(11),
nomeCliente varchar(100),
dataNascimentoCliente datetime,
enderecoCliente varchar (100),
bairroCliente varchar (100),
cidadeCliente   varchar (100),
estadoCliente   varchar (2),
cepCliente      varchar (9),
ufCliente varchar(2),
UltimaCompra datetime
);


insert into cliente (
cpfCliente,
nomeCliente,
dataNascimentoCliente,
enderecoCliente,
cepCliente,
bairroCliente,
cidadeCliente,
ufCliente,
UltimaCompra
 )
Values 
 ('04496332780', 'João da Silva', '1969/11/25', 'Rua Antônio Numes', '88045963', 'Palmeiras','Londrina', 'PR', '2022/08/10'),
 ('05485031490', 'Ana Regina Fagundes', '1986/09/21', 'Rua Palmeias Novas', '88078923', 'Leblon', 'Rio de Janeiro', 'RJ', '2022/07/30'),
 ('03350314905', 'Fernando Soares', '1990/03/05', 'Rua Palmeias Novas', '88048917', 'Copacabana','Rio de Janeiro','RJ', '2022/05/15');

SELECT codigoCliente FROM cliente WHERE cidadeCliente = "Rio de Janeiro";
Delete From cliente where codigoCliente=1;





