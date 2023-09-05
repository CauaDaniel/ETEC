drop database Universidade;

Create database Universidade;
use Universidade;

CREATE TABLE Alunos (
    MATRICULA int auto_increment primary key,
    nome varchar(50),
    sobrenome varchar(50),
    endereco varchar(100),
    cidade varchar(50),
    estado varchar(2),
    CEP varchar(9),
    RG varchar(12),
    CPF varchar(14),
    DataNascimento date
);

CREATE TABLE Disciplinas (
    COD_Disciplina int auto_increment primary key,
    nome_disciplina varchar(100),
    carga_horaria int
);

CREATE TABLE Professores (
    COD_Professor int auto_increment primary key,
    nome varchar(50),
    sobrenome varchar(50),
    endereco varchar(100),
    cidade varchar(50),
    estado varchar(2),
    CEP varchar(9),
    RG varchar(12),
    CPF varchar(14),
    DataNascimento date,
    formacao varchar(50),
    carga_horaria int
);

INSERT INTO Alunos (nome,sobrenome,endereco,cidade,estado,CEP,RG,CPF,DataNascimento) VALUES
('João', 'Victor', 'Rua dos Palmares, 15', 'São Paulo', 'SP', '11156-971', '12345678', '12345678901', '2009-01-27'),
('Nicolas', 'Ferreira', 'Rua Tambores, 123', 'Rio de Janeiro', 'RJ', '46910-221', '87654321', '10987654321', '2006-02-12'),
('Jorge', 'Sousa', 'Rua Dia Azul, 53', 'Belo Horizonte', 'MG', '93489-128', '654321', '98765432109', '2010-03-27'),
('Anna', 'Carvalho', 'Rua Peixe Limpo, 123', 'Jacareí','SP', '24078-830', '789456123', '32165498745', '2005-07-17'),
('Nathan', 'Manchilha', 'Rua Olimpio Silvana, 203', 'Novo Horizonte','SP', '75134-420', '456123789', '45632178901', '2006-11-22');

INSERT INTO Disciplinas (COD_Disciplina, nome_disciplina, carga_horaria) VALUES 
(1, 'Matemática', 80),
(2, 'Química', 70),
(3, 'Física', 70),
(4, 'Programação Web', 110),
(5, 'Banco de Dados I', 110);

INSERT INTO Professores (nome,sobrenome,endereco,cidade,estado,CEP,RG,CPF,DataNascimento,formacao, carga_horaria) VALUES 
('Caio', 'Ferreira', 'Rua Pão Douce, 503', 'São Paulo', 'SP', '76390-741', '456789121', '78965412301', '1992-01-14', 'Bacharel em Matemática', 40),
('Renato', 'Silveira', 'Rua Bento Silva, 203', 'Rio de Janeiro', 'RJ', '71620-193', '789123459', '45678912345', '2000-05-25', 'Licenciatura em Química', 30),
('Giovanna', 'Santos', 'Rua Bejas, 204', 'Belo Horizonte', 'MG', '72806-014', '321456698', '78945612301', '1980-03-08', 'Mestrado em Física', 40),
('Fernanda', 'Ribeiro', 'Rua Florinda, 301', 'Salvador', 'BA', '19251-489', '123789451', '65478932101', '1985-05-14', 'Doutorado em Biologia', 30),
('Arthur', 'Daniel', 'Rua dos Eletricistas, 405','Novo Horizonte','SP','15793-048','587203878','48913247806','2001-12-02','Especialização em Informática', 20);

-- Listagem nome e formação Professores
SELECT nome, formacao
FROM Professores;

-- Listagem disciplinas, nome e carga horária
SELECT nome_disciplina, carga_horaria
FROM Disciplinas
WHERE COD_Disciplina >= 2;

-- Listagem dos alunos com matricula >1 e data nascimento entre 2001 e 2010
SELECT *
FROM Alunos
WHERE MATRICULA > 1
AND DataNascimento BETWEEN '2001-01-01' AND '2010-12-31';

-- Listagem dos alunos com todos atributos com matricula >2 e data nascimento >2005
SELECT *
FROM Alunos
WHERE MATRICULA > 2
AND DataNascimento > '2005-01-01';

-- Listagem nome e carga_horária dos Professores
SELECT nome, carga_horaria
FROM Professores;

-- Listagem Disciplinas no geral
SELECT *
FROM Disciplinas;

-- Listagem Nome e CPF da table Alunos com Nome dos alunos começando a primeira letra do seu nome. 
SELECT nome, CPF
FROM Alunos
WHERE nome LIKE 'A%';

-- Atualização nome da disciplina
UPDATE Disciplinas
SET nome_disciplina = 'Banco de Dados II'
WHERE COD_Disciplina = 5;

-- Listagem dos nomes e formação dos 3 primeiros registros de professores 
SELECT nome, formacao
FROM Professores
WHERE COD_Professor <4;

-- Listagem Código Professor >3 e data nascimento > "20081110"
SELECT *
FROM Professores
WHERE COD_Professor > 3
AND DataNascimento > '2000-11-10';

-- Listagem Matricula Alunos >= 3 e data nascimento > "20080312"
SELECT *
FROM Alunos
WHERE Matricula >= 3
AND DataNascimento > '2008-03-12';

-- Listagem em ordem alfabética
SELECT *
FROM Disciplinas
ORDER BY nome_disciplina;

-- BD feito por Cauã 2DS :D
