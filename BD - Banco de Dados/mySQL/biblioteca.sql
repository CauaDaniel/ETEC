drop database Biblioteca;

create database Biblioteca;
use Biblioteca;

CREATE TABLE Livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    editora VARCHAR(255),
    autor VARCHAR(50),
    edicao INT,
    ano_publicacao INT,
    assunto VARCHAR(255)
);

CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    matricula VARCHAR(10) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    celular VARCHAR(15),
    cpf VARCHAR(14),
    rg VARCHAR(12),
    email VARCHAR(255)
);

CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    celular VARCHAR(15),
    cpf VARCHAR(14),
    rg VARCHAR(12),
    email VARCHAR(255),
    titulacao VARCHAR(255)
);

CREATE TABLE Emprestimos (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    data_emprestimo DATE NOT NULL,
    data_prevista_devolucao DATE NOT NULL,
    id_livro INT NOT NULL,
    id_aluno INT NOT NULL,
    FOREIGN KEY (id_livro) REFERENCES Livros(id_livro),
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno)
);

CREATE TABLE Devolucoes (
    id_devolucao INT AUTO_INCREMENT PRIMARY KEY,
    data_devolucao DATE NOT NULL,
    id_emprestimo INT NOT NULL,
    FOREIGN KEY (id_emprestimo) REFERENCES Emprestimos(id_emprestimo)
);

INSERT INTO Livros (
titulo, editora, autor, edicao, ano_publicacao, assunto
) 
values
('Gato de Botas', 'rute gular','J.H.R. barbie', 1, 1956, 'Fantasia'),
('Cinderela', 'carie','maria de lomes', 3, 1999, 'Romance'),
('1984', 'Companhia das Letras','George Orwell', 2, 1949, 'Ficção Científica'),
('Dia azul', 'Claro medeiros','Teto azul', 1, 1603, 'Drama'),
('O Príncipe pequeno', 'Penguin Classics','Nicolau Maquiavel', 1, 1532, 'Política');

INSERT INTO Alunos (
matricula, nome, endereco, telefone, celular, cpf, rg, email
)
values
("001","Deise Santos","Rua flocos, 131, São José dos Campos, SP","3907-7431","(12)98274-2778","389.177.142-84","48.674.037-3","Deise@gmail.com"),
("002","Dora Coimbra","Rua garcia, 232, São José dos Campos, SP","3907-8541","(12)98346-5018","372.846.761-98","57.961.228-9","Dora@gmail.com"),
("003","Marcos Daniel","Rua salmão, 783, São José dos Campos, SP","3914-2150","(12)98637-6789","784.804.216-49","45.793.054-5","Marcos@gmai.com"),
("004","David junior","Rua Tubarâo, 204, São José dos Campos, SP","3907-5596","(12)98586-2458","127.467.806-29","77.357.366-0","David@gmail.com"),
("005","Cauã Marcondes","Rua das neves, 333, São José dos Campos, SP","3907-6987","(12)98443-8720","323.596.383-70","23.457.347-3","cauã@gmail.com");

INSERT INTO Professores (
nome, endereco, telefone, celular, cpf, rg, email, titulacao
)
values
("Paulo Lima","Rua dos médicos, 250, São Paulo, SP","(11)3907-8541","(11)98888-5818","264.828.761-98","32.661.228-9","paulolima@gmail.com","Doutorado em Química"),
("Fernanda Souza","Rua dos advogados, 222, São Paulo, SP","(11)3914-2150","(11)98123-1689","374.804.216-69","46.563.014-5","fernandasouza@gmai.com","Doutorado em Direito"),
("Gustavo Barros","Rua dos engenheiros, 108, São Paulo, SP","(11)3907-7431","(11)98846-2578","184.157.142-54","28.634.079-3","gustavo@gmail.com","Mestrado em Engenharia Civil"),
("Camila Silva","Rua dos arquitetos, 118, São Paulo, SP","(11)3907-5596","(11)98240-2178","237.537.806-69","27.297.764-0","camila@gmail.com","Doutorado em Arquitetura"),
("Jorge Oliveira","Rua dos contadores, 310, São Paulo, SP","(11)3907-6987","(11)98346-7820","423.582.583-50","12.447.975-3","jorgeoliveira@gmail.com","Mestrado em Contabilidade");

INSERT INTO Emprestimos (
data_emprestimo, data_prevista_devolucao, id_livro, id_aluno
)
values
("2022-02-10","2022-02-24",1,1),
("2022-02-12","2022-03-12",3,2),
("2022-02-15","2022-02-22",4,3),
("2022-02-18","2022-03-06",2,4),
("2022-03-05","2022-03-10",5,5);

INSERT INTO Devolucoes (
data_devolucao, id_emprestimo
)
values
("2022-02-24",1),
("2022-03-12",2),
("2022-02-22",3),
("2022-03-06",4),
("2022-03-19",5);

-- Seleção do titulo e autor do livro e seleção nome dos alunos.

select titulo, autor from Livros;
select nome from Alunos;

-- Atualização registros alunos com id 1 e 3.
UPDATE
     Alunos
SET
   nome = "Fernanda",
   endereco = "Rua dos peixes, 15, São José dos Campos, SP",
   celular = '(12) 9233-9180',
   email = 'fernanda@gmail.com'
WHERE
    id_aluno = 1;

UPDATE
     Alunos
SET
   nome = "Luiz Macedo",
   CPF = "324.804.426-69",
   celular = '(12)98141-1789',
   email = 'luimacedo@gmail.com'
WHERE
    id_aluno = 3;
    
-- Deletando registro do professor de id = 1.
DELETE FROM Professores WHERE id_professor = 1;
