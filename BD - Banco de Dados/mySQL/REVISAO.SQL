drop database Revisao;

CREATE DATABASE Revisao;
USE Revisao;

create table Autores (
autor_id int auto_increment primary key,
Nome_autor varchar(50)
);

create table Livros (
livro_id int auto_increment primary key,
titulo varchar(50),
autor_id int references Autores(autor_id), 
quantidade numeric
);

create table Emprestimo (
emprestimo_id int auto_increment primary key,
livro_id int references Livros(livro_id), 
data_emprestimo date, 
data_devolução date
);

insert into Autores (
Nome_autor
)
values ('Ana Paula'),('Renata Livtro'),('Maury Ganancents');

insert into Livros (
titulo,
autor_id,
quantidade
)
values ('Luz do Luar', 1, 12),('Chocolate com Pimenta', 2, 8756),('Vai na Fé', 1, 64),('A morte do amanhã', 3, 27),('Nacer do luar', 3, 29);
       
insert into Emprestimo (
data_emprestimo, 
data_devolução,
livro_id
)
values ('20230509','20230609','1'),('20230709','20230809','2'),('20230809','20230909','3'),('20231009','20231109','4');


-- 3 - Faça a contagem de livros por autor.

Select autor_id, COUNT(*) AS
quantidade_de_livros
From livros
GROUP BY autor_id;


-- 4 – Some a quantidade total de livros. 

SELECT SUM(quantidade) AS
total_livros
FROM Livros;


-- 5 – Selecione a menor quantidade de livros disponíveis. 

SELECT MIN(quantidade) AS
menor_quantidade_disponivel
FROM Livros;


-- 6 – Liste os livros ordenados por título. 

Select *
FROM Livros
ORDER BY Titulo;


-- 7 – Selecione a menor quantidade de livros disponíveis. 

SELECT MIN(quantidade) AS
menor_quantia_disponível
FROM Livros;

-- 8 – Liste os livros emprestados agrupados por data de empréstimo, ordenados por data de empréstimo

SELECT data_emprestimo, titulo
FROM Emprestimo
INNER JOIN Livros ON Emprestimo.livro_id = Livros.livro_id
ORDER BY data_emprestimo;

-- Crie uma view com informações de empréstimo por livro
CREATE VIEW vwEmprestimo AS SELECT
	titulo,
    data_emprestimo
FROM Livros L
INNER JOIN Emprestimo E ON (E.data_emprestimo = )