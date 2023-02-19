create database empresa
use empresa

CREATE TABLE Cinema (
  ID_Cinema int auto_increment primary key,
  Cliente null,
  Funcionário null,
  Exibição null,
  Produto null,
  NomeCinema varchar(50)
);
insert into Cinema (
NomeCinema
) 

values 
('Cinemark'),
('AmazonFilmes'),
('JoãoCinema'),
('CinemadoBaum'),
('NetflixCinema'); 

CREATE TABLE Cliente (
  ID_Cliente int auto_increment primary key,
  nomeClietnte varchar (100) not null
);
insert into Cliente

values
('Cauã Daniel'),
('João da Esquina'),
('Neymar Junior'),
('Arthur Santos'),
('Gabriel Silva');

CREATE TABLE Funcionário (
  ID_Funcionário int auto_increment primary key,
  nomeFuncionario varchar (100) not null,
  enderecoFuncionario varchar (100) not null,
  cidadeFuncionario varchar(50),
  CPF_Funcionario varchar(11),
  RG_Funcionario varchar(12),
  estadoFuncionario varchar(2),
  CEP_Funcionario numeric(8),
  Salário decimal (5,2)
);
insert into Funcionário (
nomeFuncionario,
enderecoFuncionario,
cidadeFuncionario,
estadoFuncionario,
CEP_Funcionario,
Salário,
CPF_Funcionario,
RG_Funcionario
)
values 
('Mario Alberto','Rua das Pedras,132','São José dos Campos','SP','123456-9845','1000,00','123354789641','154852479821'),
('Maria Fatima','Rua das Pedras,132','São José dos Campos','SP','123456-9845','1000,00','123354789641','154852479821'),
('Cauã Daniel','Rua das Pedras,132','São José dos Campos','SP','123456-9845','1000,00','123354789641','154852479821'),
('Gaby Morais','Rua das Pedras,132','São José dos Campos','SP','123456-9845','1000,00','123354789641','154852479821'),
('Enzo Solha','Rua das Pedras,132','São José dos Campos','SP','123456-9845','1000,00','123354789641','154852479821');

CREATE TABLE Exibição (
  ID_Exibição int auto_increment primary key,
  ID_Filme varchar (100) not null,
  DescricaoFilme varchar (200) not null,
  dataexibiçãoFIlme datetime
);
insert into Exibição (
DescricaoFilme,
dataexibiçãoFIlme
)
values
('Pokemon','12/12/2022'),
('Minecraft','05/10/2022'),
('Avengers 5','09/01/2022'),
('Jogador numero 0','07/06/2022'),
('One Piece','05/04/2022');

CREATE TABLE Filme (
  ID_FIlme int auto_increment primary key,
  nomeFilme varchar (100) not null
);
insert into Filme (
nomeFilme
)
values
('Pokemon'),
('Minecraft'),
('Avengers 5'),
('Jogador numero 0'),
('One Piece');

CREATE TABLE Produto (
  ID_Produto int auto_increment primary key,
  tipoProduto varchar (100) not null,
  valorProduto decimal (2,5) not null,
  vencimentoProduto datetime
);
insert into Produto (
tipoProduto,
valorProduto,
vencimentoProduto
)
values
('Ingresso: Minecraft','15,00','10/05/2022'),
('Ingresso: Pokemon','15,00','10/05/2022'),
('Ingresso: Avengers 5','15,00','10/05/2022'),
('Ingresso: One Piece','15,00','10/05/2022'),
('Ingresso: Jogador numero 0','15,00','10/05/2022');

CREATE TABLE Vendas (
  ID_Produto decimal(2,5) not null,
  ID_Cliente decimal (2,5) not null,
  Quantia decimal (9,2),
  Data_venda datetime
);
insert into Vendas(
Quantia,
Data_venda
)
values (
('2','10/05/2022'),
('1','10/05/2022'),
('5','10/05/2022'),
('3','10/05/2022'),
('1','10/05/2022');

alter table Vendas
ADD constraint fk_ID_Produto FOREIGN KEY (ID_Produto) REFERENCES Produto (ID_Produto),
ADD constraint fk_ID_Cliente FOREIGN KEY (ID_Cliente) REFERENCES Cliente (ID_Cliente),
ADD constraint fk_ID_Cliente foreign key (codecliente)
references Cliente (ID_Cliente);


