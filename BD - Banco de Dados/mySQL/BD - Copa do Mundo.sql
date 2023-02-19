drop database Copa;

create database Copa;
use Copa;

CREATE TABLE Estadio (
codest int auto_increment primary key,
nome varchar(50),
endereco varchar(100),
quantpessoas varchar(15),
KEY pk (codest)
);

CREATE TABLE Pais (
codpais int auto_increment primary key,
nome varchar(30),
codjog int references Jogadores(codjog),
KEY pk (codpais),
KEY fk (codjog)
);

CREATE TABLE Jogadores (
codjog int auto_increment primary key,
codpais int references Pais(codpais),
nome varchar(100),
posicao varchar(20),
key pk (codjog),
key fk (codpais)
);

CREATE TABLE Grupos (
codgrup int auto_increment primary key,
codpais int references Pais(codpais),
codpais2 int references Pais(codpais),
codpais3 int references Pais(codpais),
codpais4 int references Pais(codpais),
grupo varchar(50)
);

CREATE TABLE Arbitro (
  codarb int auto_increment primary key,
  codjogo int references Jogos (codjogo) ,
  nome varchar(60),
  KEY pk (codarb),
  KEY fk (codjogo)
);

CREATE TABLE Jogos (
  codjogo int auto_increment primary key,
  codpais int references Pais(codpais),
  codpais2 int references Pais(codpais),
  codgrup int references Grupos(codgrup),
  codarb int references Arbitro (codarb),
  codest int references Estadio (codest),
  data date,
  horario time,
  KEY pk (codjogo),
  KEY fk (codgrup, codarb, codest, codpais)
);

insert into Grupos (
grupo
)
values ('A'),('B'),('C'),('D'),('E'),('F'),('G'),('H');

insert into Arbitro (
nome
)
values 
('Bruno Boschilia'), ('Raphael Claus'), 
('Daniele Orsato'), ('Wilton Pereira Sampaio'), 
('Abdulrahman Al Jassim'), ('Slavko Vincic'), 
('Michael Oliver'), ('Facundo Tello'), 
('Victor Gomes'),('Fernando Rapallini'),
('Abdulla Mohammed Mohammed'),('Cesar Ramos'),
('Szymon Marciniak'),('Clement Turpin'),
('Juan Carlos Mora'),('Janny Sikazwe'),
('Mario Alberto Escobar Toca'),('Redouane Jiyed'),
('Imail Elfath'),('Fernando Rapallini'),
('Cesar Ramos'),('Michael Conger'),
('Chris Beath'),('Antonio Mateu'),
('Daniel Siebert'),('Ivan Barton'),
('Ivan Barton'),('Elvis Noupue'),
('Alireza Faghani'),('Daniel Siebert'),
('Andres Matias Matonte Cabrera'),('Clement Turpin');

insert into Estadio (
nome,
endereco,
quantpessoas
)
values 
('Estádio Khalifa International','7C7X+C8Q, Al Waab St, Doha, Catar','40000'),
('Estádio 974 - Ras Abu Aboud','Ras Abu Aboud, Catar','40000'),
('Estádio Al Thumama','6GPJ+8X4, Doha, Catar','40000'),
('Estádio Ahmad bin Ali','Ar-Rayyan, Catar','40000'),
('Estádio Al Bayt','Al Khor, Catar','60000'),
('Estádio Lusail','CFCR+75، لوسيل،, Catar','80000'),
('Estádio Al Janoub','5H5F+WP7, Al Wukair, Catar','40000'),
('Estádio Education City','Doha, Catar','40000');

insert into Pais (
nome
)
values 
('Brasil'),('Catar'), ('Equador'),('Holanda'), ('Senegal'),('Estados Unidos'), ('Inglaterra'),('Irã'),
('País de Gales'),('Argentina'), ('Arábia Saudita'),('México'), ('Polônia'),('França'),
('Costa Rica'),('Bélgica'), ('Canadá'),('Marrocos'), ('Croácia'),('Sérvia'),
('Dinamarca'),('Tunísia'), ('Austrália'),('Espanha'), ('Alemanha'),('Japão'),
('Suíça'),('Camarões'), ('Portugal'),('Gana'), ('Uruguai'),('Coreia do Sul');

insert into Jogadores (
nome,
posicao
)
values 
('Richarlison de Andrade','Atacante'), ('Mohammed Waad ','Meia'), ('Piero Hincapié','Defensor'), 
('Memphis Depay','Atacante'), ('Pathé Ciss','Meia'), ('Jesús Ferreira','Atacante'), 
('Jack Grealish','Atacante'), ('Shojae Khalilzadeh','Zagueiro'), ('Mark Harris','Atacante'), 
('Lionel Messi','Atacante'), ('Abdulelah Al-Malki ','Meia'), ('Gerardo Arteaga','Defensor'), 
('Matty Cash','Zagueiro'), ('Olivier Giroud','Atacante'), ('Joel Campbell','Atacante'), 
('Eden Hazard','Atacante'), ('Sam Adekugbe','Zagueiro'), ('Zakaria Aboukhlal','Atacante'), 
('Lovro Majer','Meia'), ('Luka Jovic','Atacante'), ('Andreas Christensen','Zagueiro'), 
('Montassar Talbi','Zagueiro'), ('Awer Mabil','Atacante'), ('Gavi','Meia'), 
('Jamal Musiala','Atacante'), ('Maya Yoshida','Zagueiro'), ('Breel Embolo','Atacante'), 
('Vicent Aboubakar','Atacante'), ('Cristiano Ronaldo','Atacante'), ('André Ayew','Atacante'), 
('Facundo Pellistri','Meia'), ('Kim Min-jae','Zagueiro');

insert into Jogos (
data,
horario
)
values
('20221120','13:00:00'),  ('20221121','07:00:00'),  ('20221121','10:00:00'),  ('20221121','13:00:00'),  ('20221121','15:00:00'),
('20221122','07:00:00'),  ('20221122','11:00:00'),  ('20221122','14:00:00'),  ('20221122','16:00:00'),  ('20221123','09:00:00'),
('20221123','13:00:00'),  ('20221123','16:00:00'),  ('20221124','09:00:00'),  ('20221123','13:00:00'),  ('20221123','16:00:00'),
('20221124','09:00:00'),  ('20221124','12:00:00'),  ('20221124','15:00:00'),  ('20221125','10:00:00'),  ('20221124','15:00:00');

update Grupos set codpais = '2' WHERE codgrup = 1;
update Grupos set codpais2 = '3' WHERE codgrup = 1;
update Grupos set codpais3 = '4' WHERE codgrup = 1;
update Grupos set codpais4 = '5' WHERE codgrup = 1;

update Grupos set codpais = '6' WHERE codgrup = 2;
update Grupos set codpais2 = '7' WHERE codgrup = 2;
update Grupos set codpais3 = '8' WHERE codgrup = 2;
update Grupos set codpais4 = '9' WHERE codgrup = 2;

update Grupos set codpais = '10' WHERE codgrup = 3;
update Grupos set codpais2 = '11' WHERE codgrup = 3;
update Grupos set codpais3 = '12' WHERE codgrup = 3;
update Grupos set codpais4 = '13' WHERE codgrup = 3;

update Grupos set codpais = '14' WHERE codgrup = 4;
update Grupos set codpais2 = '23' WHERE codgrup = 4;
update Grupos set codpais3 = '22' WHERE codgrup = 4;
update Grupos set codpais4 = '21' WHERE codgrup = 4;

update Grupos set codpais = '26' WHERE codgrup = 5;
update Grupos set codpais2 = '24' WHERE codgrup = 5;
update Grupos set codpais3 = '25' WHERE codgrup = 5;
update Grupos set codpais4 = '15' WHERE codgrup = 5;

update Grupos set codpais = '18' WHERE codgrup = 6;
update Grupos set codpais2 = '19' WHERE codgrup = 6;
update Grupos set codpais3 = '16' WHERE codgrup = 6;
update Grupos set codpais4 = '17' WHERE codgrup = 6;

update Grupos set codpais = '1' WHERE codgrup = 7;
update Grupos set codpais2 = '27' WHERE codgrup = 7;
update Grupos set codpais3 = '28' WHERE codgrup = 7;
update Grupos set codpais4 = '20' WHERE codgrup = 7;

update Grupos set codpais = '29' WHERE codgrup = 8;
update Grupos set codpais2 = '30' WHERE codgrup = 8;
update Grupos set codpais3 = '31' WHERE codgrup = 8;
update Grupos set codpais4 = '32' WHERE codgrup = 8;


update Jogos set codpais = '2' WHERE codjogo = 1;
update Jogos set codpais2 = '3' WHERE codjogo = 1;
update Jogos set codgrup = '1' WHERE codjogo = 1;
update Jogos set codarb = '3' WHERE codjogo = 1;
update Jogos set codest = '5' WHERE codjogo = 1;

update Jogos set codpais = '7' WHERE codjogo = 2;
update Jogos set codpais2 = '8' WHERE codjogo = 2;
update Jogos set codgrup = '2' WHERE codjogo = 2;
update Jogos set codarb = '2' WHERE codjogo = 2;
update Jogos set codest = '1' WHERE codjogo = 2;

update Jogos set codpais = '4' WHERE codjogo = 3;
update Jogos set codpais2 = '5' WHERE codjogo = 3;
update Jogos set codgrup = '2' WHERE codjogo = 3;
update Jogos set codarb = '4' WHERE codjogo = 3;
update Jogos set codest = '3' WHERE codjogo = 3;

update Jogos set codpais = '6' WHERE codjogo = 4;
update Jogos set codpais2 = '9' WHERE codjogo = 4;
update Jogos set codgrup = '2' WHERE codjogo = 4;
update Jogos set codarb = '5' WHERE codjogo = 4;
update Jogos set codest = '4' WHERE codjogo = 4;

update Jogos set codpais = '12' WHERE codjogo = 5;
update Jogos set codpais2 = '13' WHERE codjogo = 5;
update Jogos set codgrup = '3' WHERE codjogo = 5;
update Jogos set codarb = '7' WHERE codjogo = 5;
update Jogos set codest = '2' WHERE codjogo = 5;

update Jogos set codpais = '21' WHERE codjogo = 6;
update Jogos set codpais2 = '22' WHERE codjogo = 6;
update Jogos set codgrup = '4' WHERE codjogo = 6;
update Jogos set codarb = '12' WHERE codjogo = 6;
update Jogos set codest = '8' WHERE codjogo = 6;

update Jogos set codpais = '14' WHERE codjogo = 7;
update Jogos set codpais2 = '23' WHERE codjogo = 7;
update Jogos set codgrup = '4' WHERE codjogo = 7;
update Jogos set codarb = '9' WHERE codjogo = 7;
update Jogos set codest = '7' WHERE codjogo = 7;

update Jogos set codpais = '18' WHERE codjogo = 8;
update Jogos set codpais2 = '19' WHERE codjogo = 8;
update Jogos set codgrup = '6' WHERE codjogo = 8;
update Jogos set codarb = '10' WHERE codjogo = 8;
update Jogos set codest = '7' WHERE codjogo = 8;

update Jogos set codpais = '25' WHERE codjogo = 9;
update Jogos set codpais2 = '26' WHERE codjogo = 9;
update Jogos set codgrup = '5' WHERE codjogo = 9;
update Jogos set codarb = '26' WHERE codjogo = 9;
update Jogos set codest = '1' WHERE codjogo = 9;

update Jogos set codpais = '24' WHERE codjogo = 10;
update Jogos set codpais2 = '15' WHERE codjogo = 10;
update Jogos set codgrup = '5' WHERE codjogo = 10;
update Jogos set codarb = '11' WHERE codjogo = 10;
update Jogos set codest = '3' WHERE codjogo = 10;

update Jogos set codpais = '16' WHERE codjogo = 11;
update Jogos set codpais2 = '17' WHERE codjogo = 11;
update Jogos set codgrup = '6' WHERE codjogo = 11;
update Jogos set codarb = '16' WHERE codjogo = 11;
update Jogos set codest = '4' WHERE codjogo = 11;

update Jogos set codpais = '27' WHERE codjogo = 12;
update Jogos set codpais2 = '28' WHERE codjogo = 12;
update Jogos set codgrup = '7' WHERE codjogo = 12;
update Jogos set codarb = '8' WHERE codjogo = 12;
update Jogos set codest = '7' WHERE codjogo = 12;

update Jogos set codpais = '31' WHERE codjogo = 13;
update Jogos set codpais2 = '32' WHERE codjogo = 13;
update Jogos set codgrup = '8' WHERE codjogo = 13;
update Jogos set codarb = '32' WHERE codjogo = 13;
update Jogos set codest = '8' WHERE codjogo = 13;

update Jogos set codpais = '29' WHERE codjogo = 14;
update Jogos set codpais2 = '30' WHERE codjogo = 14;
update Jogos set codgrup = '8' WHERE codjogo = 14;
update Jogos set codarb = '8' WHERE codjogo = 14;
update Jogos set codest = '2' WHERE codjogo = 14;

update Jogos set codpais = '1' WHERE codjogo = 15;
update Jogos set codpais2 = '20' WHERE codjogo = 15;
update Jogos set codgrup = '7' WHERE codjogo = 15;
update Jogos set codarb = '29' WHERE codjogo = 15;
update Jogos set codest = '6' WHERE codjogo = 15;

update Jogos set codpais = '9' WHERE codjogo = 16;
update Jogos set codpais2 = '8' WHERE codjogo = 16;
update Jogos set codgrup = '2' WHERE codjogo = 16;
update Jogos set codarb = '17' WHERE codjogo = 16;
update Jogos set codest = '4' WHERE codjogo = 16;

update Jogos set codpais = '2' WHERE codjogo = 17;
update Jogos set codpais2 = '5' WHERE codjogo = 17;
update Jogos set codgrup = '1' WHERE codjogo = 17;
update Jogos set codarb = '24' WHERE codjogo = 17;
update Jogos set codest = '3' WHERE codjogo = 17;

update Jogos set codpais = '1' WHERE codjogo = 18;
update Jogos set codpais2 = '20' WHERE codjogo = 18;
update Jogos set codgrup = '7' WHERE codjogo = 18;
update Jogos set codarb = '29' WHERE codjogo = 18;
update Jogos set codest = '6' WHERE codjogo = 18;

update Jogos set codpais = '29' WHERE codjogo = 19;
update Jogos set codpais2 = '30' WHERE codjogo = 19;
update Jogos set codgrup = '8' WHERE codjogo = 19;
update Jogos set codarb = '8' WHERE codjogo = 19;
update Jogos set codest = '2' WHERE codjogo = 19;

update Jogos set codpais = '10' WHERE codjogo = 20;
update Jogos set codpais2 = '11' WHERE codjogo = 20;
update Jogos set codgrup = '3' WHERE codjogo = 20;
update Jogos set codarb = '6' WHERE codjogo = 20;
update Jogos set codest = '6' WHERE codjogo = 20;


update Pais set codjog = '15' WHERE codpais = 1;
update Pais set codjog = '1' WHERE codpais = 2;
update Pais set codjog = '1' WHERE codpais = 3;
update Pais set codjog = '3' WHERE codpais = 4;
update Pais set codjog = '3' WHERE codpais = 5;
update Pais set codjog = '4' WHERE codpais = 6;
update Pais set codjog = '2' WHERE codpais = 7;
update Pais set codjog = '2' WHERE codpais = 8;
update Pais set codjog = '4' WHERE codpais = 9;
update Pais set codjog = '20' WHERE codpais = 10;
update Pais set codjog = '20' WHERE codpais = 11;
update Pais set codjog = '5' WHERE codpais = 12;
update Pais set codjog = '5' WHERE codpais = 13;
update Pais set codjog = '7' WHERE codpais = 14;
update Pais set codjog = '10' WHERE codpais = 15;
update Pais set codjog = '11' WHERE codpais = 16;
update Pais set codjog = '11' WHERE codpais = 17;
update Pais set codjog = '8' WHERE codpais = 18;
update Pais set codjog = '8' WHERE codpais = 19;
update Pais set codjog = '18' WHERE codpais = 20;
update Pais set codjog = '6' WHERE codpais = 21;
update Pais set codjog = '6' WHERE codpais = 22;
update Pais set codjog = '7' WHERE codpais = 23;
update Pais set codjog = '10' WHERE codpais = 24;
update Pais set codjog = '9' WHERE codpais = 25;
update Pais set codjog = '9' WHERE codpais = 26;
update Pais set codjog = '12' WHERE codpais = 27;
update Pais set codjog = '12' WHERE codpais = 28;
update Pais set codjog = '19' WHERE codpais = 29;
update Pais set codjog = '19' WHERE codpais = 30;
update Pais set codjog = '13' WHERE codpais = 31;
update Pais set codjog = '13' WHERE codpais = 32;

update Arbitro set codjogo = '13' WHERE codarb = 32;
update Arbitro set codjogo = '15' WHERE codarb = 29;
update Arbitro set codjogo = '18' WHERE codarb = 29;
update Arbitro set codjogo = '9' WHERE codarb = 26;
update Arbitro set codjogo = '17' WHERE codarb = 24;
update Arbitro set codjogo = '16' WHERE codarb = 17;
update Arbitro set codjogo = '11' WHERE codarb = 16;
update Arbitro set codjogo = '6' WHERE codarb = 12;
update Arbitro set codjogo = '10' WHERE codarb = 11;
update Arbitro set codjogo = '8' WHERE codarb = 10;
update Arbitro set codjogo = '7' WHERE codarb = 9;
update Arbitro set codjogo = '12' WHERE codarb = 8;
update Arbitro set codjogo = '14' WHERE codarb = 8;
update Arbitro set codjogo = '19' WHERE codarb = 8;
update Arbitro set codjogo = '5' WHERE codarb = 3;
update Arbitro set codjogo = '20' WHERE codarb = 6;
update Arbitro set codjogo = '4' WHERE codarb = 5;
update Arbitro set codjogo = '3' WHERE codarb = 4;
update Arbitro set codjogo = '1' WHERE codarb = 3;
update Arbitro set codjogo = '2' WHERE codarb = 2;

update Jogadores set codpais = '1' WHERE codjog  = 1;
update Jogadores set codpais = '2' WHERE codjog = 2;
update Jogadores set codpais = '3' WHERE codjog = 3;
update Jogadores set codpais = '4' WHERE codjog = 4;
update Jogadores set codpais = '5' WHERE codjog = 5;
update Jogadores set codpais = '6' WHERE codjog = 6;
update Jogadores set codpais = '7' WHERE codjog = 7;
update Jogadores set codpais = '8' WHERE codjog = 8;
update Jogadores set codpais = '9' WHERE codjog = 9;
update Jogadores set codpais = '10' WHERE codjog = 10;
update Jogadores set codpais = '11' WHERE codjog = 11;
update Jogadores set codpais = '12' WHERE codjog = 12;
update Jogadores set codpais = '13' WHERE codjog = 13;
update Jogadores set codpais = '14' WHERE codjog = 14;
update Jogadores set codpais = '15' WHERE codjog = 15;
update Jogadores set codpais = '16' WHERE codjog = 16;
update Jogadores set codpais = '17' WHERE codjog = 17;
update Jogadores set codpais = '18' WHERE codjog = 18;
update Jogadores set codpais = '19' WHERE codjog = 19;
update Jogadores set codpais = '20' WHERE codjog = 20;
update Jogadores set codpais = '21' WHERE codjog = 21;
update Jogadores set codpais = '22' WHERE codjog = 22;
update Jogadores set codpais = '23' WHERE codjog = 23;
update Jogadores set codpais = '24' WHERE codjog = 24;
update Jogadores set codpais = '25' WHERE codjog = 25;
update Jogadores set codpais = '26' WHERE codjog = 26;
update Jogadores set codpais = '27' WHERE codjog = 27;
update Jogadores set codpais = '28' WHERE codjog = 28;
update Jogadores set codpais = '29' WHERE codjog = 29;
update Jogadores set codpais = '30' WHERE codjog = 30;
update Jogadores set codpais = '31' WHERE codjog = 31;
update Jogadores set codpais = '32' WHERE codjog = 32;


select * from Jogadores;
select * from Arbitro;
select * from Jogos;
select * from Grupos;
select * from Pais;
select * from Estadio;

