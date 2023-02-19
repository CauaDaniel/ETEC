drop database petshop;

create database petshop;
use petshop;

#Comecei criando as tabelas com os atributos descritos na atividade.

CREATE TABLE Especie (
  id int auto_increment primary key,
  nome varchar(50) not null,
  KEY pk (id)
);

CREATE TABLE Animal (
  id int auto_increment primary key,
  nome varchar(50) not null,
  raça int references Especie(id),
  KEY pk (id),
  KEY fk (raça)
);

CREATE TABLE Dono (
  id int auto_increment primary key,
  Nome varchar(80),
  cpf varchar(11) ,
  fone varchar(9),
  KEY pk (id)
);

alter table Animal add dono int;
alter table Animal add constraint dono foreign key (dono) references Dono(id);

rename table Especie to Raça; #Renomeei o nome da tabela

#Após a criação das tabelas vamos inserir os dados nas tabelas: Dono, Animal e Raça (Tabela Especie que foi renomeada).


#Aqui na tabela Dono, adcionei os nomes dos donos, seu cpf e o fone.

insert into Dono (
Nome,
cpf,
fone
)
values 
('João','1234','3333 4444'),
('Pedro','5678','3333 5555'),
('José','9123','3333 6666'),
('Maria','1234','3333 2222');


#Já na tabela Animal, adcionei os nomes dos animais cadastrados no pet shop.

insert into Animal (
nome
)
values 
('Toto'),
('Toto'),
('Lica'),
('Brutos'),
('Pluto');

#Tabela Raça, preenchi com as raças dos animas cadastrados.

insert into Raça (
nome
)
values 
('Vira Lata'),
('Poddle');


#Aqui fiz a devidas alterações para a relação entre o dono e o animal de estimação através dos códigos(ID).

update Animal set raça = '1' WHERE id = 1 or 5 or 3;
update Animal set raça = '2' WHERE id = 2;
update Animal set raça = '3' WHERE id = 4;
update Animal set dono = '2' WHERE id = 1;
update Animal set dono = '3' WHERE id = 2;
update Animal set dono = '1' WHERE id = 3;
update Animal set dono = '1' WHERE id = 4;
update Animal set dono = '1' WHERE id = 5;


update Animal
set nome = 'Rex'
WHERE id = 4;

update Animal set dono = '4' WHERE id = 3;


#Criei a tabela Consulta dos animais, onde mostra o hórario de cada uma delas.

create table Consulta (
id int auto_increment primary key,
data date,
animal varchar(1)
);

alter table Consulta add hora time;

insert into Consulta (
data,
animal,
hora
)
values
('20070112','1','07:00:00'),
('20070112','3','08:00:00'),
('20070113','1','07:00:00');

DELETE FROM Consulta WHERE id = 1; # - Deletando um dos dados

update Consulta # - Alteração em um dos dados
set data = 20070113
where id = 3;


#Exibição de todos os dados das tabelas descritas.
select * from Animal;
select * from Dono;
select * from Raça;








