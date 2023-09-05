CREATE DATABASE academia;

USE academia;

CREATE TABLE alunos (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  idade INT(11) NOT NULL,
  altura FLOAT NOT NULL,
  peso FLOAT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE treinos (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE aulas (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  duracao INT(11) NOT NULL,
  descricao VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE aluno_treino (
  id INT(11) NOT NULL AUTO_INCREMENT,
  aluno_id INT(11) NOT NULL,
  treino_id INT(11) NOT NULL,
  data_inicio DATE NOT NULL,
  data_fim DATE NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (aluno_id) REFERENCES alunos(id),
  FOREIGN KEY (treino_id) REFERENCES treinos(id)
);

CREATE TABLE aluno_aula (
  id INT(11) NOT NULL AUTO_INCREMENT,
  aluno_id INT(11) NOT NULL,
  aula_id INT(11) NOT NULL,
  data DATE NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (aluno_id) REFERENCES alunos(id),
  FOREIGN KEY (aula_id) REFERENCES aulas(id)
);

INSERT INTO alunos (nome, idade, altura, peso) VALUES 
  ('João', 25, 1.80, 85),
  ('Maria', 30, 1.65, 60),
  ('Pedro', 27, 1.70, 70),
  ('Ana', 35, 1.75, 75);

INSERT INTO treinos (nome, descricao) VALUES
  ('Treino A', 'Treino de musculação para iniciantes'),
  ('Treino B', 'Treino de musculação para avançados'),
  ('Treino C', 'Treino de condicionamento físico para todos os níveis');

INSERT INTO aulas (nome, duracao, descricao) VALUES
  ('Aula de Zumba', 60, 'Aula de dança com ritmos latinos'),
  ('Aula de Pilates', 60, 'Aula de exercícios que fortalecem o core'),
  ('Aula de Yoga', 90, 'Aula de exercícios de respiração e alongamento');

INSERT INTO aluno_treino (aluno_id, treino_id, data_inicio, data_fim) VALUES
  (1, 1, '2022-03-01', '2022-03-31'),
(2, 2, '2022-02-15', '2022-04-30'),
(3, 3, '2022-03-01', '2022-06-30'),
(4, 1, '2022-04-01', '2022-07-31');

INSERT INTO aluno_aula (aluno_id, aula_id, data) VALUES
(1, 1, '2022-03-05'),
(1, 2, '2022-03-07'),
(2, 3, '2022-03-10'),
(3, 1, '2022-03-12'),
(3, 3, '2022-03-15'),
(4, 2, '2022-03-20'),
(4, 3, '2022-03-25');