create database empresa
use empresa
drop database empresa

CREATE TABLE Cliente (
  ID_Cliente int auto_increment primary key,
  nomeClietnte varchar (100) not null,
  telefoneCliente varchar (25) null,
  enderecoCliente varchar (100) not null,
  bairroCliente varchar (100) not null,
  CEPCliente varchar (9) not null,
  pontoreferenciaCliente varchar (40) null
);


CREATE TABLE Produto (
  ID_Produto int auto_increment primary key,
  tipoProduto varchar (100) not null,
  valorProduto decimal (9,2) not null,
  vencimentoProduto datetime,
  fabricacaoProduto datetime
);

CREATE TABLE Vendas (
  codecliente int not null,
  codeproduto int not null,
  Quantia decimal (5,2),
  Data_venda datetime
);

-- pois ent, pra tu fzr chave estrangeira tu faz esse esqueminha ai, cria um nomezin na tabela, dps coloca o novo nome usa (fk) pra estrangeira--
-- da um foreing key no nome criado na tabela, da referencia na tabela e no atributo q é primario e dale --
alter table Vendas
ADD constraint fk_ID_Produto FOREIGN KEY (codeproduto) 
REFERENCES Produto (ID_Produto),
ADD constraint fk_ID_Cliente foreign key (codecliente)
references Cliente (ID_Cliente);

-- describe p ver descrição do produto -- 
describe Vendas
