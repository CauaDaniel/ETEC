CREATE DATABASE hospital;

USE hospital;

CREATE TABLE pacientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  idade INT NOT NULL,
  sexo VARCHAR(10) NOT NULL,
  endereco VARCHAR(100) NOT NULL,
  telefone VARCHAR(20) NOT NULL,
  data_entrada DATE NOT NULL,
  data_saida DATE
);

CREATE TABLE medicos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  especialidade VARCHAR(50) NOT NULL,
  telefone VARCHAR(20) NOT NULL,
  salario DECIMAL(10, 2) NOT NULL
);

CREATE TABLE enfermeiros (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  especialidade VARCHAR(50) NOT NULL,
  telefone VARCHAR(20) NOT NULL,
  salario DECIMAL(10, 2) NOT NULL
);

CREATE TABLE consultas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  paciente_id INT NOT NULL,
  medico_id INT NOT NULL,
  data_consulta DATETIME NOT NULL,
  descricao VARCHAR(500) NOT NULL
);

CREATE TABLE internacoes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  paciente_id INT NOT NULL,
  medico_id INT NOT NULL,
  enfermeiro_id INT NOT NULL,
  data_entrada DATETIME NOT NULL,
  data_saida DATETIME,
  descricao VARCHAR(500) NOT NULL
);

INSERT INTO pacientes (nome, idade, sexo, endereco, telefone, data_entrada)
VALUES 
  ('João Silva', 45, 'Masculino', 'Rua das Flores, 123', '(11) 99999-8888', '2022-03-01'),
  ('Maria Santos', 30, 'Feminino', 'Av. Paulista, 456', '(11) 77777-6666', '2022-03-02'),
  ('Pedro Oliveira', 60, 'Masculino', 'Rua dos Girassóis, 789', '(11) 55555-4444', '2022-03-03'),
  ('Ana Costa', 25, 'Feminino', 'Rua das Acácias, 321', '(11) 33333-2222', '2022-03-04');

INSERT INTO medicos (nome, especialidade, telefone, salario)
VALUES
  ('Dr. Carlos', 'Cardiologia', '(11) 99999-1111', 15000.00),
  ('Dr. Fernanda', 'Neurologia', '(11) 88888-2222', 18000.00),
  ('Dr. Rafael', 'Oncologia', '(11) 77777-3333', 20000.00);

INSERT INTO enfermeiros (nome, especialidade, telefone, salario)
VALUES
  ('Enf. Juliana', 'Emergência', '(11) 66666-4444', 5000.00),
  ('Enf. Rodrigo', 'UTI', '(11) 55555-3333', 6000.00),
  ('Enf. Mariana', 'Pediatria', '(11) 44444-2222', 5500.00);
  
INSERT INTO consultas (paciente_id, medico_id, data_consulta, descricao)
VALUES
(1, 2, '2022-03-06 14:30:00', 'Dor de cabeça persistente'),
(3, 3, '2022-03-07 11:15:00', 'Tratamento de câncer');

INSERT INTO internacoes (paciente_id, medico_id, enfermeiro_id, data_entrada, descricao)
VALUES
(1, 1, 1, '2022-03-08 08:00:00', 'Infarto agudo do miocárdio'),
(2, 2, 2, '2022-03-09 18:30:00', 'AVC'),
(3, 3, 2, '2022-03-10 12:00:00', 'Quimioterapia');