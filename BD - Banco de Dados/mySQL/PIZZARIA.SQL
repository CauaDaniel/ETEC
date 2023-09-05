drop database pizzaria;

Create database pizzaria;
Use pizzaria;

-- 1 - Criação das Tabelinhas:
Create table Cliente(
id_cliente int auto_increment primary key,
nome_cliente varchar(100),
tel_cliente numeric (11),
ende_cliente varchar(100),
CPF_cliente varchar(12));

Create table Pedidos(
id_pedido int auto_increment primary key,
cliente_id int references Cliente(cliente_id),
data_pedido date,
valor_total numeric (11));

Create table Pizzas(
id_pizza int auto_increment primary key,
Nome_pizza varchar(50),
tamanho varchar(15),
preco numeric(10));


Create table Ingredientes(
id_ingre int auto_increment primary key,
nome_ingre VARCHAR(50),
quantidadedisponivel varchar (10)
);

Create table Funcionarios(
id_funcio int auto_increment primary key,
nome_funcio varchar(100),
cargo_funcio varchar(50),
datacontratacao date
);

-- 2 - Insira 5 registros em cada tabela:
insert into Cliente (
nome_cliente,
tel_cliente,
ende_cliente,
CPF_cliente
)
values('Jorginho Cruz', '12312459706','São José dos Campos, Rua dos Malfeitores, 103','569842654-11'),
('Eliane dos Santos', '12988563214','Taubaté, Rua dos Automotivos, 150','810212246-51'),
('Malvina Robert', '12996781230','Jacareí, Rua dos Vasdores, 205','92757263-41'),
('Luana Batista', '12988450369','São José dos Campos, Rua dos Padeiros, 304','35584692-31'),
('Layla Meideiros', '12047972601','São José dos Campos, Rua dos Benfeitores, 350','314998681-21');

insert into Pedidos (
cliente_id,
data_pedido,
valor_total 
)
values('01', '20230715','100'),
('01', '20230719','150'),
('03', '20230717','50'),
('04', '20230716','30'),
('05', '20230718','45');

insert into Pizzas (
Nome_pizza,
tamanho,
preco
)
values('Três Queijos', 'Pequena','55'),
('Calabresa', 'Extra Grande','65'),
('Frango Catupiry', 'Média','50'),
('Carne Seca', 'Grande','45'),
('Portugal', 'Pequena','35');

insert into Ingredientes(
id_ingre,
nome_ingre,
quantidadedisponivel
)
values
('01', 'Queijo Mussarela','15'),
('02', 'Calabresa','24'),
('03', 'Milho','22'),
('04', 'Frango','13'),
('05', 'Catupiri','21');

insert into Funcionarios(
nome_funcio,
cargo_funcio,
datacontratacao)
values
('Roberto bolanos', 'Pizaiolo','20230613'),
('Carlos Delagran', 'Atendente','20211205'),
('Sylas Malafaias', 'Garçom','20150222'),
('Florinda neves', 'Garçom','20230322'),
('Giovanna Santos', 'Chefe','20220520');


-- 3 - Calcular a média de valores totais gastos em todos os pedidos.

Select AVG(valor_total) AS media_gastos FROM pedidos;

-- 4 - Contar quantos clientes fizeram pedidos.

Select id_cliente, COUNT(*) AS
data_pedido
From Pedidos
GROUP BY id_cliente;


-- 5 - Encontrar o valor mínimo de todas as pizzas disponíveis.

Select MIN(valor_total) AS 
minimo_gastos 
FROM pedidos;

-- 6 - Encontrar o valor máximo gasto em um único pedido.

SELECT MAX(valor_total) AS
valor_total
FROM Pedidos;

-- 7 - Calcular a soma de todos os valores totais gastos em pedidos.

SELECT SUM(valor_total) AS
soma_valores
FROM Pedidos;

-- 8 - Imagine que a quantidade disponível de queijo Mussarela (ID 1) diminuiu em 10 kg devido ao uso em pedidos. 
-- Atualize a quantidade disponível desse ingrediente na tabela
UPDATE
     Ingredientes
SET
	quantidadedisponivel = '5'
WHERE
    id_ingre = 1;
    
-- 9 - Contar o número de pedidos feitos por cada cliente:
SELECT C.nome_cliente, count(id_pedido) AS
num_pedidos
FROM Pedidos P
INNER JOIN Cliente C ON (P.cliente_id = C.id_cliente)
GROUP BY cliente_id;

-- 10 - Calcular o total gasto por cada cliente
	
SELECT C.nome_cliente, MAX(valor_total) as
valor_total
FROM Pedidos P
INNER JOIN Cliente C ON (P.cliente_id = C.id_cliente)
GROUP BY cliente_id;

-- 11 - Encontrar o preço mínimo e máximo de pizzas
SELECT 
MAX(preco) as valor_maximo,
MIN(preco) as valor_minimo
FROM Pizzas;

-- 12 - Listar as pizzas de cada pedido com seus respectivos clientes

SELECT 
id_pedido as numero_pedido,
Cliente_Nome as nome_cliente,
Pizzas.Nome as Nome_pizza
FROM Pedidos as Pedidos
INNER JOIN Cliente ON (Pedido.id_cliente = id.cliente)
INNER JOIN Dadopedido ON (id_pedido = Dadopedido.id_pedido)
INNER JOIN Pizzas as Pizza on (Dadopedido.id_pizza = id_pizza);

-- 13 - Inner Join entre Pedidos e Clientes para obter os detalhes d'		o cliente para cada pedido

-- 14 - Inner Join entre Pedidos e Pizzas para listar as pizzas em cada pedido

-- 15 - Inner Join entre Pedidos, Clientes e Funcionários para listar os pedidos feitos por cada cliente atendido por um funcionário

-- 16 - Inner Join entre Pizzas e Ingredientes para listar os ingredientes de cada pizza

-- 17 - Inner Join entre Funcionários e Pedidos para listar os pedidos atendidos por cada funcionário

-- 18 - Inner Join entre Pedidos e Pizzas para calcular o valor total gasto em cada pedido

-- 19 - Crie uma View para listar os detalhes dos pedidos de cada cliente

-- 20 - Crie uma View para listar as pizzas e seus ingredientes

-- 21 - Crie uma View para mostrar os funcionários e seus respectivos cargos

-- 22 - Crie uma View para exibir o valor total gasto em cada pedido de pizza

-- 23 - Crie uma View para mostrar os clientes que fizeram pelo menos um pedido