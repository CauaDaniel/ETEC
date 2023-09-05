drop database Revisao2;

CREATE DATABASE Revisao2;
USE Revisao2;

create table Alunos	 (
aluno_id int auto_increment primary key,
nome varchar(50),
idade numeric
);

create table Disciplinas (
disciplina_id int auto_increment primary key,
nome varchar(50)
);

create table Notas (
notas_id int auto_increment primary key,
aluno_id int references Alunos(alunos_id), 
disciplina_id int references Disciplinas(disciplina_id),
nota numeric
);

insert into Alunos (
aluno_id, nome, idade 
)
values ('1','Renata Livtro','16'),('2','Maury Ganancents','18'), ('3','Fernando Cruz','15');

insert into Disciplinas (
disciplina_id,
nome
)
values('1','Português'),('2','Matemática'),('3','Inglês');

insert into Notas(
aluno_id,
disciplina_id,
nota
)
values ('1','2','8'),('2','3','9'),('1','1','10'),('3','2','8'),('1','2','7');


-- Faça uma contagem de alunos por disciplina. 

Select disciplina_id, COUNT(aluno_id) AS quantidade_alunos
FROM Notas
GROUP BY disciplina_id;

-- Liste a soma das notas de uma disciplina. 

Select disciplina_id, SUM(nota) AS soma_notas
FROM Notas
GROUP BY disciplina_id;

-- Liste a menor nota de cada aluno. 

Select A.nome, MIN(N.nota) AS menor_nota
FROM Notas N
INNER JOIN Alunos A ON (N.aluno_id = A.aluno_id)
GROUP BY A.nome;

-- Faça uma listagem dos alunos ordenados por idade. 

Select nome, idade
FROM Alunos
ORDER BY idade;

-- Liste a maior nota de cada disciplina. 

Select D.nome, MAX(N.nota) AS maior_nota
FROM Notas N
INNER JOIN Disciplinas D ON (D.disciplina_id = N.disciplina_id)
GROUP BY D.nome;

-- Faça uma listagem das notas dos alunos agrupadas por disciplina, ordenadas por nome do aluno e disciplina. 

Select A.nome, N.nota, D.nome AS disciplina
FROM Notas N
INNER JOIN Disciplinas D ON (D.disciplina_id = N.disciplina_id)
INNER JOIN Alunos A ON (A.aluno_id = N.aluno_id)
ORDER by A.nome, D.nome;

-- view 1

Create view vwMediaNotasPorAlunoDisciplina AS
Select a.nome as aluno, d.nome as disciplina, AVG(n.nota) as media_nota
From Alunos a
Inner Join Notas n ON a.aluno_id = n.aluno_id
inner join Disciplinas d On n.disciplina_id = d.disciplina_id
Group by a.nome, d.nome;

Select * From vwMediaNotasPorAlunoDisciplina

-- view 2

Create view vwMaiorNotasPorAlunoDisciplina AS
Select d.nome as disciplina, a.nome as aluno, MAX(n.nota) AS melhor_nota
From Disciplinas d
inner join Notas n on d.disciplina, a.nome as aluno, max(n.nota) as melhor_nota
inner join Alunos a on n.aluno_id = a.aluno_id
Group by d.nome;
Select*from vwMelhorNotaPorDisciplina

-- view 3

Create view vwPiorNotaPorDisciplina as
select d.nome as disciplina, a.nome as aluno, min(n.nota) as pior_nota
from Disciplinas d
inner join Notas n on d.disciplina_id = n.disciplina_id
inner join Alunos a on n.aluno_id = a.aluno_id
group by a.nome, d.nome;
select * from vwPiorNotaPorDisciplina

















