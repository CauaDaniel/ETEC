drop database universidade;

create database universidade;
use universidade;


CREATE TABLE Departamento (
  CODDepartamento int auto_increment primary key,
  Nome varchar(60),
  Centro varchar(60),
  Telefone varchar(20),
  KEY pk (CODDepartamento)
);

CREATE TABLE Disciplina (
  Código int auto_increment primary key,
  Nome varchar(60),
  Descrição varchar(555),
  NúmeroCréditos varchar(60),
  Departamento int references Departamento(CODDepartamento),
  KEY pk (Código),
  KEY fk (Departamento)
);


CREATE TABLE Curso (
  Nome varchar(60),
  Tipo varchar(60),
  Departamento varchar(55),
  Coordenador varchar(60) ,
  ViceCoordenador varchar(60),
  key fk (Departamento)
);

CREATE TABLE Aluno (
  NMatrícula int auto_increment primary key,
  Nome varchar(60),
  Cpf varchar(14),
  Endereco varchar(100),
  Telefones varchar (30),
  DataNascimento date,
  Curso varchar (60),
  codDepartamento int references Departamento(CODDepartamento),
  Sexo varchar(9)
);

CREATE TABLE Professor (
  idProfessor int auto_increment primary key,
  Nome varchar(60),
  CPF varchar(12),
  codDepartamento int references Departamento(CODDepartamento),
  telefone varchar(15) not null,
  KEY fk (codDepartamento)
);

CREATE TABLE Oferta (
  codOferta int auto_increment primary key,
  fkDisciplina int references Disciplina(Código),
  Professor varchar(60),
  Horário time
);

create table MatriculaOferta (
idOferta int references Oferta(codOferta),
numMatricula int references Aluno(NMatrícula)
);

insert into Disciplina (
Nome,
Descrição,
NúmeroCréditos
)
values 
('Matemática','Ciência que relaciona as práticas do cotidiano e a natureza ao raciocínio humano e à lógica numérica.','3'),
('Português','Tudo sobre a língua portuguesa, abrangendo: Gramática, Literatura e Redação. Narração, Dissertação, Descrição, Figuras de Linguagem, etc.','3'),
('Fisica','Física, suas possibilidades e impossibilidades','2'),
('Inglês','Aprenda a lingua considerada universal.','4'),
('História','Ciência que estuda o Homem e sua ação no tempo e no espaço, concomitante à análise de processos e eventos ocorridos no passado. ','3');


insert into Departamento(
Nome,
Telefone,
Centro
)
values
('Sniencie','35267345','Laboratório'),
('Haavey','34257320','Laboratório'),
('Joovo','31256367','Pátio'),
('Lutree','38984563','Pátio'),
('Unbreak','34623546','Secretária');


insert into Professor(
Nome,
CPF,
Telefone
)
values
('Fabricio Venancio da Prima','46259357889','(12)982351710'),
('Jessica Fonseca Silva','26172435624','(12)996853784'),
('Francisco Fernandes Lima','42516724984','(12)981450981'),
('Maria Gorethe Ribeiro','25162340987','(12)98264733'),
('Glória Pereira Silvana ','67335266738','(12)991352438');


insert into Aluno(
Nome,
Curso,
CPF,
Endereco,
Telefones,
DataNascimento,
Sexo
)
values
('Joana Cruzado','Desenvolvimento de Sistemas','04972394854','Rua , São José dos Campos, 12225-159','(12)974154789','20061112','Feminino'),
('Felipe Rodrigues','Administração','38126687851','Rua Manoel Gonçalvez , Jacarei, 12548-020','(12)524789631','20010315','Masculino'),
('Ricardo Josias','Medicina','34773763825','Rua 22 de abril, Jacarei, 65498-521','(12)492657318','20040828','Masculino'),
('Daniel Albert','Automação Industrial','59251600880','Rua Igarapés, Jacarei , 58236-212','(12)105987354','20000521','Masculino'),
('Anna Maria ','Gastronomia','43816275800','Rua Conde Dracula, São José dos Campos,75336-698','(12)240589934','20020417','Feminino');


insert into Curso(
Nome,
Tipo,
Departamento,
Coordenador,
Vicecoordenador
)
values
('Desenvolvimento de Sistemas','Tecnico','Sniencie','Gabriel Faria','Ana Maria'),
('Adiministração','Tecnico','Haavey','João Santos','Giovana Venci'),
('Automação Industrial','Tecnico','Joovo','Sabrina Mattos','Fernando Santos'),
('Medicina','Doutorado','Lutree','Pedro Santana','Vinicius Silveira'),
('Gastronomia','Graduação','Unbreak','Albert Gaspar','Ruan Roma');


insert into Oferta(
Professor,
Horário
)
values
('Fabricio Venancio da Prima','07:00'),
('Jessica Fonseca Silva','13:35'),
('Glória Pereira Silvana','11:15'),
('Maria Gorethe Ribeiro','09:10'),
('Francisco Fernandes Lima','16:25');


show tables;

select nome, Descrição from Disciplina;
select Nome from Departamento;
select NOME, CPF from Aluno;

select * from Oferta;

update Aluno
set Nome = 'Cauã Daniel Morais da Cruz'
WHERE NMatrícula = 2

