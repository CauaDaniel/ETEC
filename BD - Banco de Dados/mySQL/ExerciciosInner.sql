Drop DataBase  ExerciciosInner;

create database ExerciciosInner;
use ExerciciosInner;

create table Funcionarios (
Codigo int auto_increment primary key, 
PrimeiroNome varchar(50), 
SegundoNome varchar(50), 
UltimoNome varchar(50), 
DataNasci date, 
CPF varchar(15), 
RG varchar(9), 
Endereco varchar(100), 
CEP varchar(12),
Cidade varchar(100),
Fone varchar(18),
Funcao varchar(100),
Salario numeric
);

create table Departamentos (
Codigo  int auto_increment primary key,
Nome varchar(100),
Localizacao varchar(80)
);

ALTER TABLE Funcionarios ADD CodigoDepartamento int references Departamentos(Codigo);
ALTER TABLE Departamentos ADD CodigoFuncionarioGerente int references Funcionário(Codigo);

INSERT INTO Funcionarios (PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Fone, Funcao, Salario, CodigoDepartamento)
VALUES
  ('Ana', 'Carolina', 'Silva', '1990-05-10', '12345678900', '987654321', 'Rua das Flores, 123', '12345-678', 'São Paulo', '(11) 98765-4321', 'Gerente', '5000.00','2'),
  ('João', 'Carlos', 'Santos', '1985-09-15', '98765432100', '123456789', 'Avenida dos Sonhos, 456', '54321-987', 'Rio de Janeiro', '(21) 12345-6789', 'Analista de Marketing', '3500.00','3'),
  ('Maria', 'Fernanda', 'Oliveira', '1992-07-20', '45678912300', '987123456', 'Travessa das Palmeiras, 789', '98765-432', 'Belo Horizonte', '(31) 54321-0987', 'Desenvolvedor', '4200.00','4'),
  ('Pedro', 'Henrique', 'Costa', '1988-12-05', '78912345600', '654987321', 'Praça dos Girassóis, 321', '78965-432', 'Brasília', '(61) 65432-1098', 'Analista Financeiro', '4800.00','1'),
  ('Luiza', 'Beatriz', 'Santos', '1995-03-25', '32178945600', '789321654', 'Rua dos Pinheiros, 987', '45678-901', 'Porto Alegre', '(51) 98765-4321', 'Gerente de Vendas', '5500.00','5');

INSERT INTO Departamentos (Nome, Localizacao, CodigoFuncionarioGerente)
VALUES
('Vendas', 'São Paulo', 3),
('Marketing', 'Rio de Janeiro', 4),
('TI', 'Belo Horizonte', 1),
('RH', 'Brasília', 2),
('Financeiro', 'Porto Alegre', 1);

-------------- 1 ------------------
SELECT
     PrimeiroNome,
     SegundoNome
FROM
    Funcionarios
ORDER BY
	SegundoNome;
    
-------------- 2 ------------------
    
SELECT
	 Codigo,
	 CodigoDepartamento,
     PrimeiroNome,
     SegundoNome, 
     UltimoNome, 
     DataNasci, 
     CPF, 
     RG, 
     Endereco, 
     CEP, 
     Cidade, 
     Fone, 
     Funcao, 
     Salario
FROM
    Funcionarios
ORDER BY
	Cidade;

-------------- 3 ------------------

SELECT
     PrimeiroNome,
     SegundoNome, 
     UltimoNome,  
     Salario
FROM
    Funcionarios
ORDER BY
	PrimeiroNome,
    SegundoNome,
    UltimoNome;

-------------- 4 ------------------

SELECT
     PrimeiroNome,
     DataNasci
FROM
    Funcionarios
ORDER BY
	DataNasci DESC, PrimeiroNome;
    

-------------- 5 ------------------
SELECT
     PrimeiroNome,
     Fone
FROM
    Funcionarios
ORDER BY
	PrimeiroNome,
	Fone;
-------------- 6 ------------------
SELECT
     PrimeiroNome,
     Salario,
     sum(Salario) as total
FROM
    Funcionarios
GROUP BY
	PrimeiroNome;
-------------- 7 ------------------
SELECT
     PrimeiroNome,
     NomeDepartamento
FROM
    Funcionarios
ORDER BY
	PrimeiroNome,
     Fone;
-------------- 8 ------------------

-------------- 9 ------------------

-------------- 10 ------------------

-------------- 11 ------------------

-------------- 12 ------------------

-------------- 13 ------------------

-------------- 14 ------------------

-------------- 15 ------------------

-------------- 16 ------------------

-------------- 17 ------------------

-------------- 18 ------------------

-------------- 19 ------------------

