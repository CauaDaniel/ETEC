-- CRIANDO O PROJETO TSQLTA -- 
drop database projetotsqlta;
CREATE DATABASE ProjetoTSQLTA;

-- UTILIZANDO A BASE DE DADOS CRIADA --
USE ProjetoTSQLTA;

-- Criando a tabela clientes -- 
CREATE TABLE Clientes (
Nome varchar(100),
Endereco varchar(100),
Telefone varchar(25),
Email varchar(100));

/*
ALTER TABLE - serve para realizar alteraç~oes nas tabelas. Ela espera dois aruumentos:
--> ADD - Adicionar campos nas tabelas.
--> DROP - Remover campos nas tabelas.

Sendo assim, podemos observar que falta colocar a chave primária na tabela e vamos adicionar o campo 
DataNascimento.

*/

ALTER TABLE Clientes ADD DataNascimento DATETIME;
ALTER TABLE Clientes ADD Codigo INT AUTO_INCREMENT PRIMARY KEY;
 /* Esse comando faz com que vá de 1 em 1, ou o tanto que vc desejar */

/*
Para o WORKBEANCH substitua a instrução IDENTITY(1,1) por AUTO_INCREMENT
*/

-- Inserindo dados na tabela Clientes utiilzando o comando INSET / INTO -- 

INSERT INTO Clientes (
Nome, 
Endereco,
Telefone,
Email,
DataNascimento )
Values
('João da Silva','Rua das Pedras, 132, São José dos Campos, SP','(12)93925-1520','joao@gmail.com','19871220'),
('Arthur dos Santos','Rua do Norte, 15, Paraná, PR','(12)98169-4875','arthur@gmail.com','19900506'),
('Giovanna Becker','Rua do Sul, 120, Maranhão, MA','(11)98338-2338','Gibe902@gmail.com','19901205'),
('Paulo Silva','Rua das Cereijas, 204, Goiás, GO','(12)97905-1725','paulSilv@gmail.com','20000107'),
('Bryan Herique','Rua Peixes, 305,Espírito Santo, EC','(11) 98463-8652','Bryrique@gmail.com','19920211'),
('Kauan Silvestre','Rua Novembro, 100, Acre, AC','(11) 99452-3702','KKsilvestre@gmail.com','19990322'),
('Nicolas Pereira','Rua dos Alfaiates, 222, Ubatuba, SP','(12)98893-4167','nicolaureira@gmail.com','19950626'),
('Christian Camado','Rua dos Pedreiros, 85, Jacareí, SP','(11)98663-4324','christiancmd@gmail.com','20010527'),
('Pedro Sampaio','Rua dos Vidraceiros, 60, Manaus, AM','(12)97586-6624','pedrosamp74@gmail.com','19970714'),
('Lucas Vilken','Rua dos Ferreiros, 84, Rio de Janeiro, RJ','(11)98534-3346','Lucvilken@gmail.com','19980611');

/*----------------------------------------------------------------------------------------------------------------

TRABALHANDO COM O COMANDO SELECT

O comando SELECT retorna as consultas registradas dentro do Banco de Dados. Como exemplo, vamos consultar TODOS os registros da tabela Clientes utilizando 
o (*) para retornar todos os campos da tabela Clientes.
*/
SELECT * FROM Clientes

/*------------------------------------------------------------------------------------------------------------------

FUNÇÃO GETDATE / CURDATE
A função GETDATE() para o SQLServer / CURDATE() para o Workbench, usada para obter a data atual do sistema.
Você pode utilizar esse comando dentro de um contexto de consulta */;
SELECT Codigo, 
	   Nome, 
       curdate() as "Data Atual" -- CURDATE() As "Data Atual" no Workbench
From 
      Clientes;
/* Podemos adicionar ou subtraiir valores diretamente da função usando operadores aritméticos.
Exemplo: 
*/
SELECT 
      Codigo,
      Nome,
      Email,
      curdate() - 5 as "Data Atual - Cindo dias",
      curdate() as "Data Atual",
      curdate() + 5 as "Data Atual + Cinco dias"
FROM
     Clientes

/*--------------------------------------------------------------------------------------------------------------------
FILTRO DE REGISTRO COM O COMANDO WHERE 

Podemos filtrar os registros que desejamos visualizar com base em determinadors critérios que atendem à necessidade de negócio utilizando o comando
WHERE. Com ele é possível determinar o que desejamos visualizar , coparando os campos com determinadas condições estabelecidas, usando operadores de comparação (>, <, >=, <=);
Exemplo:
*/;

SELECT
      Codigo, 
      Nome,
      Endereco, 
      Telefone,
      Email,
      DataNascimento
FROM
	 Clientes
WHERE
	Codigo >=6 
    
/*-----------------------------------------------------------------------------------------------------------------------------------

OPERADOR AND

Podemos utilizar o operador AND para limitar ou buscar pesquisas entre um registro e outro.
Exemplo:
Para podermos realizar uma seleção de clientes que possui Codigo maior que 2 e a DataNascimento maior que 
 10/11/1987 devemos utilizar:
 */;
 SELECT
       Codigo,
       Nome,
       Endereco,
       Telefone,
       Email,
       DataNascimento
FROM
	Clientes
WHERE
     Codigo > 2 AND DataNascimento > '19871110';
 -- Queremos neste código selecionar os registros que tem como código maior que 2 e DataNscimento maior do que 10/11/1987
/*----------------------------------------------------------------------------------------------------------
 OPERADOR OR
 
 Assim como o AND, o operador OR serve para retornar uma lista de registros que satisfaz uma ou outra condição;
 */
 SELECT
      Codigo,
      Nome,
      Endereco,
      Telefone,
      Email,
      DataNascimento
FROM
    Clientes
WHERE
	Codigo > 7 OR DataNascimento > "1989708"
-- Filtro de registro que lista o Código maior que 7 OU DataNascimento : 08/07/1989
/*--------------------------------------------------------------------------------------------------------------
   Operador LIKE
Você pode utiçozar operador LIKE em seus códigos para realizar pesquisas aproximadas em capos de caracteres.
Exemplo:
Para consultar todos os registros da tabela com o primeiro caractere do campo NOME igual a "M" iremos utilizar:
*/;
SELECT 
     Codigo,
     Nome,
     Endereco,
     Telefone,
     Email,
     DataNascimento
FROM
    Clientes
WHERE
    Nome LIKE 'M%'

/*
O caractere "%" permite realzar a consulta aproximada, Podemos usar o % para pesquisar o começo mas também o final da string
*/;
SELECT * FROM Clientes WHERE Nome LIKE '%o';

/*-----------------------------------------------------------------------------------------------------------------------------
FILTRO DE REGISTRO COM COMANDO WHERE

Podemos filtrar os regstros que desejamos visualizar com base em determinados critérios que atendem à necessidade de negócio utilizando o comando WHERE.
Com ele é possível determinar o que desejamos visualizar, comparando os campos com determinadas condições estabelecidas, usando operadores de comparação
(>, <, >=, <=).
Exemplo:
*/;
SELECT
     Codigo,
     Nome,
     Endereco,
     Telefone,
     Email,
     DataNascimento
FROM
    Clientes
WHERE
    Codigo >= 6
    
/*-------------------------------------------------------------------------------------------------------------------------------
Comando TOP para SSMS / LIMIT (no Workbench)
O comando TOP permite limitar o número de registros que serão mostrados pela instrução SELECT, a qual recebe
 como argumento único o número de registros a serem ostrados pela query(instrução).

SELECT
      TOP 5,
      Codigo,
      Nome,
      Telefone
      DataNascimento
FROM
    Clientes
*/;

SELECT
      Codigo,
      Nome,
      Telefone,
      DataNascimento
FROM
    Clientes
LIMIT 5;

/* -----------------------------------------------------------------------------------------------------------------
Ordenação de registros com ORDER BY 

Para dispor os registros os registros em uma determinada ordem, utilizamos o comando ODER BY,
Ele espera apenas uma indicação das colunas em que você deseja ordenar a seleção desejada.
Exemplo:
Para colocar os regitros da tabela Clientes por ordem alfabética do campo nome, utilizamos:
*/

SELECT
     Codigo,
     Nome,
     Endereco,
     Telefone,
     Email,
     DataNascimento
FROM
    Clientes
ORDER BY
	Nome;
    
/*---------------------------------------------------------------------------------------------------------------------
Atualização dos registros com comando UPDATE

o comando UPDATE permite atualizar registros em tabelas do banco de dados, alterando o valor de uma ou mais colunas.
*/;
UPDATE
     Clientes
SET
   Nome = "Kariana Bach",
   Endereco = "Avenida Brasil, 251, Rio de Janeiro, RJ",
   Telefone = '(21) 2333-9876',
   DataNascimento = '20000724'
WHERE
    Codigo = 4;

-- Para verificar se alterações foram modificadas --
SELECT * FROM Clientes;

/*----------------------------------------------------------------------------------------------------------------------
Função ISNULL / IFNULL (para o Workbench)
Está função é utilizada para tratar campos com valores "nulos", seja em consultas ou em trechos de código
SQL.
Vamos adicionar o campo CEP na tabela Clientes para verificar o seu funcionamento.
*/
ALTER TABLE Clientes ADD CEP VARCHAR(9);

/*
Ao executar o comando SELECT * FROM Clientes. podemos verificar que a coluna CEP está com o indentificador "NULL" em todos os registros da tabela,
pois não realizaremos nenhum UPDATE na coluna recém-criada. Para fins de relatório e de apresentação de dados mais formais, é possível trocar o indicador
"NULL" por outro mais adequado.
*/
SELECT
     Codigo,
     Nome,
     Endereco,
     Telefone,
     Email,
     DataNascimento,
     IFNULL(CEP,'Sem CEP') as CEP -- Para o Workbench utilizar o IFNULL 
FROM
    Clientes;
/*--------------------------------------------------------------------------------------------------------------------------------------*/
UPDATE
      Clientes
SET
   CEP = '12200+066'
WHERE
   Codigo = 6
/*--------------------------------------------------------------------------------------------------------------------------------------
Exclusão de registros com o comando DELETE

Para excluir um registro que foi inserido em tabela do SQL SERVER, devemos utilizar o comando DELETE, que
assim como o comando INSERT e UPDATE, pode se utiizar a cláusula WHERE para filtrar os dados a serem
excluídos.
*/;

-- Para o Workbench, utiliza-se o comando DELETE seguido de FROM:
DELETE FROM Clientes WHERE Codigo = 6;


/*DELETE
     Clientes
WHERE
     Codigo = 6 
 */    
/*
Comando TRUNCATE TABLE
Para realizar a EXCLUSÃO de TODOS os registros de uma tabela, utilizamos o comando TRUNCATE TABLE, para excluir TODOS os egistros de uma tabela,
podemos utilizar esse comando.
*/

TRUNCATE TABLE Clientes
/*
LISTA DE EXERCÍCIOS 1 - Estudo de Caso da Biblioteca
LISTA DE EXERCÍCIOS 2
LISTA DE EXERCÍCIOS 3 
*/;

-- Criando a tabela Produtos;
CREATE TABLE Produtos (
Codigo INT AUTO_INCREMENT /* IDENTITY (1,1) */ PRIMARY KEY,
Descricao VARCHAR (150),
ValorVenda NUMERIC (18,2),
Ativo BIT DEFAULT (1))

/* 
Para atender ao requisito de valor padrão no campo "Ativo", foi utilizada a instrução de DEFAULT, em que foi informado o valor 1. A propriedade IDENTITY já utilizamos 
anteriormente e o campo ValorVenda está como NUMERIC que aceita dois argumentos, onde a primeira parte é o número de casas antes da vírgula e a segunda parte é o número de
casas decimais depois da vírgula.
*/;

-- Criando a tabela Vendas;

CREATE TABLE Vendas (
Codigo  INT AUTO_INCREMENT /* IDENTITY (1,1) */ PRIMARY KEY,
Cliente INT REFERENCES Clientes (Codigo),
Produto INT,
DataVenda DATETIME DEFAULT CURDATE(), -- GETDATE() porém no Workbench é CURDATE(),
Quantidade INT,
ValorVenda NUMERIC(18,2))
  
/*
A instrução REFERENCES recebe como argumento a tabela e o campo em que arespectiva chave primária foi definida. Desta forma, todos os valores atribuidos aquela coluna
devem ter uma correspondência em outra tabela.
O campo DataVenda foi definida como DATETIME e com a instrução DEFAULT atribuindo o valor da função GETDATE() queretorna a tada atual do dia.

---------------------------------------------------------------------------------------------------------------------------------------------------------
*//*
Vamos criar uma outra maneira de fazer o relacionamento da tabela VENDAS com a tabela PRODUTOS.
*/

ALTER TABLE Vendas ADD CONSTRAINT fkProdutos
FOREIGN KEY (Produto) REFERENCES Produtos (Codigo)

/*
Sempre que criamos uma chave estrangeira, o SQL Server cria uma CONSTRAINT para assegurar a integridade da chave estrangeira. Quando criamos a chave estrangeira
de Clientes na criação da tabela usando apenas a instrução REFERENCES, a criação CONSTRAINT foi implicita com um nome gerado automaticamente.
Quando criamos o comando ALTER TABLE podemos atribuir um novo explícito a essa CONSTRAINT.

---------------------------------------------------------------------------------------------------------------------------------------------------------
*/
-- INSERÇÃO DE REGISTROS NAS TABELAS PRODUTO E VENDAS -- 

INSERT INTO Produtos (Descricao, ValorVenda, Ativo) VALUES
('3DS MAX 2020-MODELAGEM, RENDER, EFEITOS', 161.95, 1),
('MICROCONTROLADOR ARDUÍNO, ELÉTRICA, EFEITOS', 181.50, 1)
('JAVA: CABEÇA EM DIA', 199.00, 1),
('JOGADOR NÚMERO 0', 22.99, 1),
('Mario: Que mario?', 67.13, 1),
('Diario de Um Banana Vol.1', 22.22, 1),
('Diario de Um Banana Vol.2',23.90, 1),
('Diario de Um Banana Vol.3', 23.89, 0),
('Diario de Um Banana Vol.4', 23.90, 1),
('Diario de Um Banana Vol.5', 23.90, 0),

INSERT INTO Vendas (Cliente, Produto, DataVenda, Quantidade, ValorVenda) VALUES
(5, 9, '20220312', 7, 177.50),
(1, 2, '20191221', 5, 84.00),
(4, 3, '20190611', 1, 180.00),
(8, 4, '20190712', 15, 25.00),
(7, 5, '20200914', 12, 23.00),
(6, 6, '20200306', 25, 24.00),
(2, 1, '20220707', 15, 24.00),
(9, 7, '20210509', 12, 24.00),
(1, 8, '20201110', 18, 24.00),
(9, 2, '20190815', 15, 24.00),

SELECT  * FROM Vendas

/*
CRIANDO A RELAÇÃO ENTRE AS TABELAS
1 - Clicar na aba de Banco de Dados (Database) ao lado esquerdo;
2 - Abrir a base de dados desejada;
3 - Clicar com o botão direito do mouse na aba Diagrama de Banco de Dados (Database Diagram)
4 - Novo Diagrama de Banco de Dados (New Database Diagram)
5 - Escolha todos as tabelas e insira;
6 - Close

/*
TEORIA DOS CONJUNTOS E OS JOINS DE BANCO DE DADOS

O JOIN é uma cláusula da linguagem SQL que permite criar consultas combinando resultados de uma ou duas tabelas por meio de valores comuns entre uma ou várias colunas de cada tabela. Quando se fala em uma tabela, 
a referência é feita a casos específicos chamamos de JOIN de uma tabela com ela mesmo.

--------------------------------------------------------------------------------------------------------------------------------------------------------------- */
/*
COMANDO INNER JOIN
O JOIN é uma consulta os registros de duas tabelas, verificando todos os registros de cada uma e selecionando os que têm valores em comum, com base 
no critérios estabelecido no JOIN. Neste banco de dados, criamos três tabelas, sendo Clientes, Produtos e Vrndas. Estabelecemos dois relacionamentos
entre Clientes e Vendas, e entre as tabelas Proditos e Vendas, desta forma não é possível inserir Vendas com Clientes que não existem, mas é possível
que existam Clientes que não realizam Vendas. Para listar o Nome de cada Cliente e a DataVenda também de cada cliente, podemos usar o comando INNER JOIN

Exemplo:
*/
SELECT
    Nome,
    DataVenda
FROM
    Cliente C
INNER JOIN Vendas V ON (C.Codigo = V.Cliente)

/*
O INNER JOIN é considerado o tipo de JOIN padrão. Podemos executar o mesmo comando anterior com outra sintaxe eliminando o INNER JOIN e obtermos
o mesmo resultado.

SELECT
    Nome,
    DataVenda
FROM
    Cliente C
JOIN Vendas V ON (C.Codigo = V.Cliente) ---- Professor aconselha a usar 'INNER JOIN'

*/

-- Com o INTER JOIN estamos trazendo a interação dos registos da tabelaClientes (ou conjunto A) e da tabela 
-- Vendas (conjunto B)  
--------------------------------------------------------------------------------------------------
/*
COMANDO LEFT JOIN (NÃO CAI NA PROVA)

O comando LEFT JOIN, entre duas tabelas hipóteticas A e B, vao trazer todos os registros da tabela A independente do critério estabelcido no JOIN. Ou
seja, se a tabela A contém 100 registros e nenhum deles tem um correspondente na outra, baseado no critério de comparação, ainda nisso, vao trazer
100 registros, porém onde a correspondência existir, os dados correspondentes serão resgatados.

*/
SELECT
     Nome,
     DataVenda
FROM
    Clientes C
LEFT JOIN Vendas V ON (C.Codigo = V.Vendas)

/*
COMANDO RIGHT JOIN (NÃO CAI NA PROVA)

O comando RIGHT JOIN produz um resultado semelhante ao LEFT JOIN, porém com a inversão da comparação.
Exemplo: Em nosso banco de dados criamos uma tabela chamada PRODUTOS que se raleciona com a tabela VENDAS.
Podemos listar a descrição de todos os produtos e a data da venda de cada um deles junto com os produtos que não realizam vendas, através de uma query.

*/

SELECT
    Descricao,
    DataVenda
FROM 
    Vendas V
RIGHT JOIN Produtos P ON (P.Codigo = V.Vendas)

/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------
COMANDO CASE
O comando CASE avalia uma lista de condições verificados em um ou dois campos e retorna apenas um (1) de vários (n) resultados possíveis.
SINTAXE:

SELECT
    CASE 
       WHEN <EXPRESSÃO LÓGICA 1>
           THEN <RESULTADO DA EXPRESSÃO>
	   WHEN <EXPRESSÃO LÓGICA 2>
           THEN <RESULTADO DA EXPRESSÃO 2>
	ELSE
	    <RESULTADO FORA DAS CONDIÇÕES LISTADAS>
	END
    FROM
    <TABELA>
*/
SELECT 
    Codigo,
    Descricao,
    CASE
        WHEN ValorVenda BETWEEN 0 AND 100
            THEN 'Bronze'
        WHEN ValorVenda BETWEEN 101 AND 200
			THEN 'Prata'
	    WHEN ValorVenda BETWEEN 201 AND 300
			THEN 'Ouro'
		WHEN ValorVenda > 300
			THEN 'Platina'
        
		ELSE
			'Não Classficado'
		END AS (Tipo do Produto)
	FROM
		Produtos
        
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
FUNÇÕES DE AGREGAÇÃO

As funções deagregação realizam cálculos com um conjunto de valores determinados pela condição estabelecida em cláusla GROUP BY, retornando um valor único para aquele
conjunto. Para que você possa melhor a utilização das funções de agregação, vamos diversos exemplos.

Uso do comando COUNT
A função COUNT pode ser usada para contar o número de registros estavelecidos em uma condição GROUP BY.
Exemplo:
Para contar o número de compras realizadas por cada cliente em um determinado dia, podemos usar o seguinte comando:
*/

SELECT 
	Nome,
    DataVenda,
	COUNT(*) as TotalVendas 
    FROM Cliente C 
INNER JOIN Vendas V ON (V.Cliente = C.Codigo)
GROUP BY
    Nome, DataVenda
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Soma dos valores com a SUM

A função SUM soma valores numéricos em um conjunto de valores estabelecidos pelo GROUP BY.
A tabela VENDAS tem um campo determinado "ValorVenda", que armazena o valor pelo qual o produto fo vendido.
Poremos executar o seguinte scrip para conhecer o valor vendido para cada cliente.
*/
SELECT
     Nome,
     DataVenda,
     SUM(ValorVenda) AS TotalVendas
FROM
	Clientes (
INNER JOIN Vendas V ON (V.Cliente = C.Codigo)
GROUP BY Nome, DataVenda

-- OUTRA FORMA --

SELECT
	Nome
    P.Descricao,
    V.ValorVenda as TotalVendas,
    P.ValorVenda as ValorVendaProduto,
    (V.ValorVenda - P.ValorVenda) as Descricao
FROM
	Clientes C
INNER JOIN Vendas V ON (V.Cliente = C.Codigo)
INNER JOIN Produtos P ON (V.Produto = P.Codigo)

/* 
A query anterior retorna uma listagem de cada um dos clientes e os produtos comprados por eles, assim como o valor venda, o valor de venda cadastrado na tabela produtos
(coluna "ValorVendaProduto") e o cálculo do desconto ofertado ao cliente, que é a diferença entre o valor da venda e o valor de venda cadastrado na tabela produtos.

Para calcularmos o total de vendas e o total de desconto para cada cliente, podemos executar:

*/
SELECT
	SUM(V.ValorVenda) as TotalVendas,
	SUM(quantidade * P.ValorVenda) as ValorVendaProduto
	SUM(quantidade * V.ValorVenda) - SUM (quantidade * P.ValorVenda) as Desconto
FROM
	Cliente C
INNER JOIN Vendas V ON (V.Cliente = C.Codigo)
INNER JOIN Produtos P ON (V.Produto = P.Codigo)
GROUP BY Nome
GROUP BY Nome

/*
-------------------------------------------------------------------------------------------------------------------------------------------------------------
Comando AVG
O comando AVG tira a média aritmética do ValorVenda da tabela Vendas utilizadas:
*/
SELECT
	AVG (ValorVenda) as MediaValorVenda
FROM
	Vendas

/*
--------------------------------------------------------------------------------------------------------------------------------------------------------------

Outra função de agragação é a instrução MIN e MAX, onde:
			-> MIN - Valor MÍNUTO de um conjunto de valores.
			-> MAX - Valor MÁXIMO de um conjunto de valores.
 */  
 
 -- Utilização do MIN --
SELECT
	 Nome,
     MIN(ValorVenda)  AS MenorVenda 
FROM
     Clientes C 
INNER JOIN Vendas V ON (C . Codigo = V.Codigo)
GROUP BY C.Nome

-- Utilização do MAX --
SELECT
    Nome,
    MAX(ValorVenda) AS MaiorVenda 
FROM 
    Clientes C
INNER JOIN Vendas V ON (C.Codigos = V.Codigo) 
GROUP BY C.Nome

/*
Criar o banco de dados ExerciciosInner

Utilizar o banco de dados

Criar a tabela Funcionarios ( Codigo, PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Fone,       Funcao, Salario.

Criar a tabela Departamentos (Codigo, Nome, Localizacao)

Inserir CodigoDepartamento como chave estrangeira na tabela Funcionários
Inserir CodigoFuncionarioGerente como chave estrangeira na tabela Departamentos

----------------------------------------------------------------------------------
-- Exercício 1 - Listar nome e sobrenome ordenado por sobrenome

      ----------------------------------------------------------------------
-- Exercício 2 - Listar todos os campos de funcionários ordenados por cidade

----------------------------------------------------------------------------
-- Exercício 3 - Liste Funcionários que têm salário superior a R$ 1000,00 ordenados pelo nome completo

----------------------------------------------------------------------------
-- Exercício 4 - Liste a Data de Nascimento e o primeiro nome dos funcionários ordenados do mais novo para o mais velho

-----------------------------------------------------------------------------
--Exercício 5 - Liste os funcionários como uma listagem telefônica

-----------------------------------------------------------------------------
--Exercício 6 - Liste o total da folha de pagamento

-----------------------------------------------------------------------------
--Exercício 7 - Liste o nome, o nome do departamento e a função de todos os funcionários

-----------------------------------------------------------------------------
-- Exercício 8 - Liste todos departamentos com seus respectivos gerentes

--------------------------------------------------------------------------------
-- Exercício 9 - Liste o Valor da folha de pagamento de cada departamento (nome)

---------------------------------------------------------------------------
-- Exercício 10 - Liste os departamentos dos funcionários que têm a função de supervisor

---------------------------------------------------------------------------   
-- Exercício 11 - Liste a quantidade de funcionários desta empresa

---------------------------------------------------------------------------
-- Exercício 12 - Liste o salário médio pago pela empresa

---------------------------------------------------------------------------
-- Exercício 13 - Liste o menor salário pago pela empresa em cada departamento

---------------------------------------------------------------------------
-- Exercício 14 - Liste o nome completo de todos os funcionários que não tenham segundo nome

---------------------------------------------------------------------------
-- Exercício 15 - Liste o nome do departamento e do funcionário ordenados por departamento e funcionário

---------------------------------------------------------------------------
-- Exercício 16 - Liste os nomes dos funcionários que moram em 'São José dos Campos' e que exerçam a função de 'Programador'

---------------------------------------------------------------------------
-- Exercício 17 - Liste os nomes dos funcionários que trabalham no departamento Pessoal

---------------------------------------------------------------------------
-- Exercício 18 - Liste o nome e o departamento de todos os funcionários que ganham mais do que algum gerentes

-----------------------------------------------------------------------------
Lembrando que:
-- SOME - Compara um valor com um conjunto de valores de uma única coluna.
-- MIN - Valor mínimo de um conjunto de valores.
-- MAX - Valor máximo de um conjunto de valores.
-- AVG - Média aritmétiva de um conjunto de valores.
-- SUM - Total (Soma) de um conjunto de valores.
-- COUNT - Contar quantidade total de itens.
*/     
/*
		 Criação das views
Uma view é uma tabela criada 'virtualmente', através de uma query, que define seu conteudo e métodos. A view ten uma série de propósitos, como por exemplom 
ficar com que todos os desenvolvedores utilize a mesma regra de negócio de acessar um set de dados ou, por questões de segurança, limitar o acesso aos objetos prorpiamento ditos para 
determinar usuários, delegando a eles acesso apenas as views

A sintaxe para criação de view é bastante simples. Basta utilizar o comando Create View informado como argumento o nome da view a ser criada, o prefixo AS e a query definirá a consulta a ser realizada.

Exemplo: para criar uma view listando apenas os clientes ativos, podemos utilizar:
*/

Create View ClientesAtivos AS Select
Codigo,
Descricao,
ValorVenda,
Ativo
From
	Produtos
Where
	Ativo = 13

-- Para acessar a View criada utilizamos:

SELECT
	Codigo,
    Descricao,
    ValorVenda,
    Ativo
FROM
	ClienteAtivos