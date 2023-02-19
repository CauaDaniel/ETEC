create database empresa;
use empresa;
drop database empresa;

CREATE TABLE Cliente (
  ID int auto_increment primary key,
  Nome varchar (100) not null,
  CPF varchar (17) ,
  Entrada varchar(10),
  AssentoEscolhido varchar(3),
  KEY pk (ID)
);

CREATE TABLE Filme (
  ID_Filme int auto_increment primary key,
  Nome varchar (100),
  Idade varchar (100),
  Categoria varchar(100),
  Duração time,
  KEY pk (ID_Filme)
);

CREATE TABLE Exibição (
  ID_Exibição int auto_increment primary key,
  ID_Filme int references Filme,
  DescriçãoFilme varchar (500) ,
  DataExibicao date,
  SaidaCartaz date,
  FOREIGN KEY (ID_Filme) REFERENCES Filme (ID_Filme),
  KEY pk (ID_Exibição),
  KEY fk (ID_Filme)
);

CREATE TABLE cinema (
  ID_Cinema int auto_increment primary key,
  Nome varchar(50),
  Endereço varchar (50),
  Cidade varchar (50),
  Assentos varchar(3),
  Cartaz varchar(100),
  KEY pk (ID_Cinema)
);
 
insert into Cliente (
  Nome,
  CPF,
  Entrada,
  AssentoEscolhido
  )
  Values
  ('Cauã Daniel','36036321090','Meia','A1'),
  ('João da Esquina','01092504001','Inteira','A1'),
  ('Neymar Junior','05601549095','Meia','C11'),
  ('Arthur Santos','02888983036','Meia','B1'),
  ('Gabriel Silva','69859896089','Inteira','A5');
  
insert into Filme (
Nome,
Idade,
Categoria,
Duração
)
values
('Pokémon','16','Aventura','110:00:00'),
('Minecraft','18','Aventura, Para família','100:00'),
('Avengers 5','10','Ação, Aventura, Sangue, Palavras implícitas','200:00'),
('Jogador Número 0','Livre','Ação, Para família','120:00'),
('One Piece: Film','16','Aventura, Ação, Para família','150:00');

insert into cinema (
Nome,
Endereço,
Cidade,
Assentos,
Cartaz
)
values 
('Cinemark','Rua dos Filmeiros Andromeda, 501','São José dos Campos','100','One Piece:Film, Pokémon, Minecraft'),
('AmazonFilmes','Rua dos Vidraceiros, 1004','São José dos Campos','80','Avengers 5, Jogador Número 0, Minecraft'),
('JoãoCinema','Rua dos Pintores, 55','São Paulo','120','Avengers 5, One Piece, Jogador Número 0, Pokémon'),
('CinemadoBaum','Rua dos Cartazes, 105','São Paulo','80','Pokémon, One Piece:Film, Minecraft'),
('NetflixCinema','Rua Artistas Infaliveis, 94','São José dos Campos','100','Avengers 5, Pokémon, Jogador Número 0'); 

insert into Exibição (
DescriçãoFilme,
DataExibicao,
SaidaCartaz
)
values
('Nas profundezas da Floresta de Okoya, os Pokémon Zarude míticos vivem em uma tropa e mantêm uma regra estrita que proíbe os forasteiros de entrar em seu território(...)','2022/05/07','2022/12/22'),
('Venha ver o filme do jogo: Minecraft! Steve entra em uma aventura para salvar a sua amiga alex, quais perigos ele irá enfrentar? ENDER DRAGON!','2022/08/14','2023/12/25'),
('Tony stark está vivo... Foi uma das mensagens deixadas por alguém misterioso, os Vingadores se reunem novamente para procura dele.','2022/08/22','2022/12/05'),
('A realidade virtual nunca foi uma experiência tão vivida. Ação, e muita diversão com este Filme','2022/05/07','2022/08/07'),
('Luffy está em apuros, e seus companheiros também, quem poderá salvalos? Ele mesmo.. Shanks.','2022/10/07','2023/01/05');

describe Exibição





