drop database PIZZARIA;

Create database PIZZARIA;
use PIZZARIA;

create table Cliente (
codigo int auto_increment primary key,
Nome varchar(50),
Endereco varchar(50), 
Telefone varchar(9),
Email varchar(50),
datanascimento date
);

create table Pizza (
codigo int auto_increment primary key,	
Sabor varchar(50),
Ingredientes varchar(200), 
Preço varchar(50)
); 

create table Vendas (
codigo int auto_increment primary key,
cliente int references codigo(Cliente),
pizza int references codigo(Pizza)
);

insert into Cliente (
 Nome, Endereco, Telefone, Email, datanascimento
) 
values
("Cauã Silva","Rua dos vidraceiros, 102, Novo Horizonte, SP","3907-7756","caua@gmail.com","20000511"),
("Edgar Soares","Rua dos pedreiros, 145, Cereijeiras , SP","3907-7452","edgar@gmail.com","19900812"),
("Miguel Santino","Rua dos afalaites, 313, Bom retiro, SP","3907-7851","miguel@gmail.com","19920701"),
("Daniel Ventura","Rua dos mosqueteiros, 545, Porte alegre, SP","3907-9816","daniel@gmail.com","20100602"),
("Anna Braga","Rua dos ferreiros, 622, Cereijeiras, SP","3907-7148","anna@gmail.com","20120903"),
("Evellyn Rundmen","Rua dos pintores, 545, Bairrinho, SP","3907-7260","evyrud@gmail.com","20131201"),
("Junior Camargo","Rua dos fabricantes, 16, Bom Retiro, SP","3907-7260","junin@gmail.com","20100702");

insert into Pizza (Sabor, Ingredientes, Preço)
values
("Quatro queijos","Farinha de trigo, molho de tomate, queijos - mussarela, prato, requeijão e queijo ralado, azeitona","R$55,00"),
("Frango","Farinha de trigo, molho de tomate, queijo, farango desfiado, azeitona, cebola","R$45,00"),
("Calabresa","Farinha de trigo, molho de tomate, queijo, calabresa, azeitona, cebola","R$40,00"),
("Brigadeiro","Farinha de trigo, leite condensado, achocolatado","R$40,00"),
("Dois queijos","Farinha de trigo, molho de tomate, queijo - musarrela, prato e queijo ralado,","R$40,00"),
("Frango Catuppiri","Farinha de trigo, molho de tomate, queijo, cattupiri, frango desfiado, cebola","R$40,00"),
("Frango","Farinha de trigo, molho de tomate, queijo, farango desfiado, azeitona, cebola","R$40,00"),
("Carne com queijo","Farinha de trigo, molho de tomate, ovo, calabresa, azeitona, cebola","R$35,00");

SELECT codigo FROM Cliente
WHERE codigo > 5 and datanascimento > 19990101;

SELECT codigo FROM Cliente
WHERE codigo > 5 and datanascimento > 20051110;	

UPDATE Pizza
SET Sabor = 'Portuguesa'
WHERE codigo = 7;

SELECT *
FROM Cliente
ORDER BY Nome;

SELECT *
FROM Pizza
ORDER BY Sabor;

DELETE FROM Cliente WHERE codigo = 1;
DELETE FROM Cliente WHERE codigo = 2;
DELETE FROM Cliente WHERE codigo = 3;
DELETE FROM Cliente WHERE codigo = 4;
DELETE FROM Cliente WHERE codigo = 5;





