create database escola
use escola

create table aluno(
nomealuno varchar(100),
enderecoaluno varchar(100),
telefonealuno varchar(25),
emailaluno varchar(100))

/*
alter table -  serve para fazer alterações na tabela criada
  --add - adicionar campo (atributo).
  --drop - remove campo (atributo)
*/

alter table aluno add datanascimento datetime
-- campo de preenchimento obrigatório - not null | alter column - alterando a coluna de um atributo

alter table aluno modify column datanascimento datetime not null -- alterando a coluna no workbench modify column

-- alter table aluno modify column datanescimento datetime not null

-- adicionando chave primaria na tabela
-- SQL server - alter table aluno add codigo int identity (1,1) primary key
alter table aluno add codigo int auto_increment primary key -- no workbench

-- inserção de registros com o comando insert / into
insert into aluno(
nomealuno,
enderecoaluno,
telefonealuno,
emailaluno,
datanascimento
)
values
('Mario Alberto','Rua das Pedras,132, São José dos Campos,SP','123456-9845','mario@gmail.com','1980-10-15'),
('Maria Fatima','Rua Rio Baixo,321,São José dos Campos, SP','456123-4551','maria@gmail.com','2000-05-10'),
('José Daniel','Rua do Alemão,456, São Paulo,SP','789456-3214','josé@gmail.com','1997-08-14'),
('Daniel José','Rua do Italiano,654,Jacareí,SP','654987-4123','Daniel@gmail.com','1998-07-20'),
('Fatima Santos','Rua 123,845,São José dos Campos','548215-6541','Fatima@gmail.com','1666-08-09'),
('João','Rua Rio Abaixo,862,Jacareí,SP','486237-9823','Joao@gmail.com','1999-05-12');

-- Para verificar se os registros estão na tabela:
select * from aluno

-- criando a tabela curso --

CREATE table curso(
codigocurso int auto_increment primary key,
aluno int references aluno (código), -- essa é a chave estrangeira --
nomecurso varchar (75) not null,
datahomologacao datetime,
cargahoraria time)

/*
A instrução references recebe como argumento a tabela e o campo que a respectiva chave primária foi definida.Desta
forma, todos os valores atribuídos naquela coluna devem ter uma correspondencia em outra tabela. O campo 
datahomologação foi definida como time recebendo número até 832.
*/

-- vamos criar outra maneira de fazer op relacionamento da tabela Aluno com a tabela curso --
alter table curso add constraint fkcodigo foreign key (aluno) references aluno (codigo)

/*
Sempre que criamos uma chave estrangeira, o MySQL cria uma constraint para assegurar a integridade da chave 
estrangeira de Alunos na criação da tabela usando a instrução REFERENCES, a criação constraint foi implicita com um
nome gerado automaticamente,
Quando criamos o comando alter table, ´podemos atribuir um nome explicito a essa constraint
*/

insert into curso (
aluno,
nomecurso,
datahomologacao,
cargahoraria
)
values
('1', 'Administração','20220331','450:00'),
('2', 'Desenvolvimento de Sistemas','20220108','500:00'),
('3', 'Inglês','20220509','300:00'),
('4', 'Automação Industrial','20220606','500:00'),
('5', 'Pediatria','20220423','700');

select * from curso