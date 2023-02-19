create database Atividade2;
use Atividade2;

create table EMPREGADOS (
CODEEmpregado int auto_increment primary key,
NOMEEmpregado varchar (50),
SOBRENOMEEmpregado varchar (50), 
DEPARTAMENTO int references DEPARTAMENTO (codeDEPARTAMENTO),
TELEFONEEmpregado numeric (12),
DATAADIMISSAOEmpregado date,
CARGOEmpregado varchar (80),
FORMACAOEmpregado varchar (80),
SEXOEmpregado varchar (1),
DATADENASCIMENTOEmpregado date);

create table DEPARTAMENTO (
codeDEPARTAMENTO int auto_increment primary key,
nomeDEPARTAMENTO varchar (100),
nomeGerente varchar(80) );

create table PROJETO (
codePROJETO int auto_increment primary key,
nomePROJETO varchar (100),
responsavelPROJETO varchar (100), 
num_equipePROJETO numeric (3),
datainicio date,
datafim date );

create table CLIENTE (
CODECLIENTE int auto_increment primary key,
NOMECLIENTE varchar (50),
SOBRENOMECLIENTE varchar (50),
enderecoCLEINTE varchar (100),
cidadeCLIENTE varchar (100),
estadoCLIENTE varchar (2),
cepCLIENTE varchar (8),
datanascimentoCLIENTE date,
telefoneCLIENTE numeric (12),
sexoCLIENTE varchar (2), 
emailCLIENTE varchar (60),
RGCLIENTE varchar (9),
CPFCLIENTE varchar (11));

insert into EMPREGADOS (
NOMEEmpregado,
SOBRENOMEEmpregado, 
TELEFONEEmpregado,
DATAADIMISSAOEmpregado,
CARGOEmpregado,
FORMACAOEmpregado,
SEXOEmpregado,
DATADENASCIMENTOEmpregado
)
VALUES
('Paula','Tejando','12988545358','20060515','Chefe','Adiministração','feminino','19800512'),
('Thomas','Turbano','12988065432','20070514','secretatio','Adiministração','masculino','19800513'),
('Jacinto','Leite Aquino Rego','12988649358','20080418','Acessor','Direito','masculino','19740227'),
('Deide','Costa','12997535579','20100630','Tecnico','Informatica','Feminino','19900816'),
('Alan','Bida Norego','12999552201','20190212','Juiz','Direito','Masculino','19940229');

insert into DEPARTAMENTO (
nomeDEPARTAMENTO,
nomeGerente
)
VALUES
('Deports LTDA.','Neymar da Silva'),
('BioTEC - Departamentos','Gabriel Cleber'),
('CNVG - Collect','Ana Paula'),
('RE-TEC','Gustavo Ramos'),
('SAFETY SECURITY','Jailson Mendes');

insert into CLIENTE(
NOMECLIENTE ,
SOBRENOMECLIENTE ,
enderecoCLEINTE ,
cidadeCLIENTE ,
estadoCLIENTE ,
cepCLIENTE ,
datanascimentoCLIENTE ,
telefoneCLIENTE ,
sexoCLIENTE , 
emailCLIENTE ,
RGCLIENTE ,
CPFCLIENTE ;
)
values
('Jailton','Mendes','Rua Marcondes Viela, 105 ','São Paulo','SP','126443839','1978/11/14','(11)974584736','')
('Cauã','Daniel','Rua Piracicaba, 125','São José dos Campos','SP','584673829','1987/10/05','(12)973485647','','','','','')
('Arthur','Marcondes','Rua Santos Oliveira, 23','Salvador','BA','38238462','1971/09/08','(31)975462734','')
('Gustavo','Souza','Rua 31 de fevereiro, 45','Florianópolis','SC','','2006/09/22','(47)98457625','','','','')
('Maria','Joaquina','Rua 7 de setembro, 230','Belo Horizonte','MG','','2000/05/09','(31)9384756263','','','')

show table EMPREGADOS
