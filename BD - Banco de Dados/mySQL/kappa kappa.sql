create database `bd_veiculos_tcc`;
use `bd_veiculos_tcc`;

CREATE TABLE IF NOT EXISTS `bd_veiculos_tcc`.`tbl_dados_pessoais` (
  `id_dados_pessoais` INT NOT NULL AUTO_INCREMENT,
  `cpf` CHAR(14) NOT NULL,
  `nome` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `categoria` VARCHAR(20) NOT NULL,
  `foto_perfil` VARCHAR(120) NULL,
  INDEX `idx_title` (`nome` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC),
  UNIQUE INDEX `telefone_UNIQUE` (`telefone` ASC),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC),
  PRIMARY KEY (`id_dados_pessoais`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_veiculos_tcc`.`tbl_mecanicos` (
  `id_mecanico` INT NOT NULL AUTO_INCREMENT,
  `data_criacao` DATE NOT NULL,
  `data_atualizacao` DATE NULL,
  `fk_id_dados_pessoais` INT NOT NULL,
  PRIMARY KEY (`id_mecanico`),
  INDEX `fk_tbl_mecanicos_tbl_dados_pessoais1_idx` (`fk_id_dados_pessoais` ASC),
  CONSTRAINT `fk_tbl_mecanicos_tbl_dados_pessoais1`
    FOREIGN KEY (`fk_id_dados_pessoais`)
    REFERENCES `bd_veiculos_tcc`.`tbl_dados_pessoais` (`id_dados_pessoais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_veiculos_tcc`.`tbl_clientes` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `data_criacao` DATE NOT NULL,
  `data_atualizacao` DATE NULL,
  `fk_id_dados_pessoais` INT NOT NULL,
  PRIMARY KEY (`id_cliente`),
  INDEX `fk_tbl_clientes_tbl_dados_pessoais1_idx` (`fk_id_dados_pessoais` ASC),
  CONSTRAINT `fk_tbl_clientes_tbl_dados_pessoais1`
    FOREIGN KEY (`fk_id_dados_pessoais`)
    REFERENCES `bd_veiculos_tcc`.`tbl_dados_pessoais` (`id_dados_pessoais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_veiculos_tcc`.`tbl_mensagens` (
  `id_msg` INT NOT NULL AUTO_INCREMENT,
  `msg` VARCHAR(255) NOT NULL,
  `hora_msg` TIME NOT NULL,
  `destinatario` VARCHAR(45) NOT NULL,
  `receptor` VARCHAR(45) NOT NULL,
  `fk_id_cliente` INT NOT NULL,
  `fk_id_mecanico` INT NOT NULL,
  INDEX `fk_tbl_mensagens_tbl_clientes1_idx` (`fk_id_cliente` ASC),
  PRIMARY KEY (`id_msg`),
  INDEX `fk_tbl_mensagens_tbl_mecanicos1_idx` (`fk_id_mecanico` ASC),
  CONSTRAINT `fk_tbl_mensagens_tbl_clientes1`
    FOREIGN KEY (`fk_id_cliente`)
    REFERENCES `bd_veiculos_tcc`.`tbl_clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_mensagens_tbl_mecanicos1`
    FOREIGN KEY (`fk_id_mecanico`)
    REFERENCES `bd_veiculos_tcc`.`tbl_mecanicos` (`id_mecanico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_veiculos_tcc`.`tbl_servicos` (
  `id_servico` INT NOT NULL AUTO_INCREMENT,
  `nome_servico` VARCHAR(50) NOT NULL,
  `desc_servico` VARCHAR(200) NOT NULL,
  `val_servico` DECIMAL(10,2) NOT NULL,
  `fk_id_mecanico` INT NOT NULL,
  PRIMARY KEY (`id_servico`),
  INDEX `fk_tbl_servicos_tbl_mecanicos1_idx` (`fk_id_mecanico` ASC),
  CONSTRAINT `fk_tbl_servicos_tbl_mecanicos1`
    FOREIGN KEY (`fk_id_mecanico`)
    REFERENCES `bd_veiculos_tcc`.`tbl_mecanicos` (`id_mecanico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_veiculos_tcc`.`tbl_horarios` (
  `id_horario` INT NOT NULL AUTO_INCREMENT,
  `hora_disponivel` DATE NOT NULL,
  `fk_id_servico` INT NOT NULL,
  PRIMARY KEY (`id_horario`),
  INDEX `fk_tbl_horarios_tbl_servicos1_idx` (`fk_id_servico` ASC),
  CONSTRAINT `fk_tbl_horarios_tbl_servicos1`
    FOREIGN KEY (`fk_id_servico`)
    REFERENCES `bd_veiculos_tcc`.`tbl_servicos` (`id_servico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_veiculos_tcc`.`tbl_agendamentos_servicos` (
  `id_agend` INT NOT NULL AUTO_INCREMENT,
  `data_agend` DATE NOT NULL,
  `hora_agend` TIME NOT NULL,
  `fk_id_cliente` INT NOT NULL,
  `fk_id_servico` INT NOT NULL,
  PRIMARY KEY (`id_agend`),
  INDEX `fk_tbl_agendamentos_servicos_tbl_clientes1_idx` (`fk_id_cliente` ASC),
  INDEX `fk_tbl_agendamentos_servicos_tbl_servicos1_idx` (`fk_id_servico` ASC),
  CONSTRAINT `fk_tbl_agendamentos_servicos_tbl_clientes1`
    FOREIGN KEY (`fk_id_cliente`)
    REFERENCES `bd_veiculos_tcc`.`tbl_clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_agendamentos_servicos_tbl_servicos1`
    FOREIGN KEY (`fk_id_servico`)
    REFERENCES `bd_veiculos_tcc`.`tbl_servicos` (`id_servico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_veiculos_tcc`.`tbl_enquetes` (
  `id_enquete` INT NOT NULL AUTO_INCREMENT,
  `avaliacao` VARCHAR(20) NOT NULL,
  `qtd_votos` INT NOT NULL,
  `id_cliente` INT NOT NULL,
  PRIMARY KEY (`id_enquete`),
  INDEX `fk_tbl_enquetes_tbl_clientes1_idx` (`id_cliente` ASC),
  CONSTRAINT `fk_tbl_enquetes_tbl_clientes1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `bd_veiculos_tcc`.`tbl_clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_veiculos_tcc`.`tbl_dados_veiculos` (
  `id_veic` INT NOT NULL AUTO_INCREMENT,
  `placa_veic` VARCHAR(10) NOT NULL,
  `nome_veic` VARCHAR(30) NOT NULL,
  `data_criada` DATE NOT NULL,
  `data_atualizacao` DATE NULL,
  `fk_id_cliente` INT NOT NULL,
  INDEX `fk_tbl_dados_veiculos_tbl_clientes1_idx` (`fk_id_cliente` ASC),
  PRIMARY KEY (`id_veic`),
  CONSTRAINT `fk_tbl_dados_veiculos_tbl_clientes1`
    FOREIGN KEY (`fk_id_cliente`)
    REFERENCES `bd_veiculos_tcc`.`tbl_clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_veiculos_tcc`.`tbl_enderecos` (
  `cep` CHAR(9) NOT NULL,
  `nome_rua` VARCHAR(40) NOT NULL,
  `num_rua` INT NOT NULL,
  `bairro` VARCHAR(40) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `uf` CHAR(2) NOT NULL,
  `complemento` VARCHAR(20) NULL,
  `fk_id_cliente` INT NOT NULL,
  PRIMARY KEY (`cep`),
  INDEX `fk_tbl_enderecos_tbl_clientes1_idx` (`fk_id_cliente` ASC),
  CONSTRAINT `fk_tbl_enderecos_tbl_clientes1`
    FOREIGN KEY (`fk_id_cliente`)
    REFERENCES `bd_veiculos_tcc`.`tbl_clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_veiculos_tcc`.`tbl_pagtos` (
  `id_pagto` INT NOT NULL AUTO_INCREMENT,
  `tipo_pagto` VARCHAR(20) NOT NULL,
  `num_cartao` VARCHAR(45) NULL,
  `status_pagto` INT NOT NULL,
  `data_pagto` DATE NOT NULL,
  `val_frete` DECIMAL(5,2) NULL,
  PRIMARY KEY (`id_pagto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_veiculos_tcc`.`tbl_pedidos` (
  `id_pedido` INT NOT NULL AUTO_INCREMENT,
  `data_pedido` DATE NOT NULL,
  `preco_unit_prod` DECIMAL(5,2) NOT NULL,
  `qtd_prod` INT NOT NULL,
  `qtd_parcelas` INT NULL,
  `total_preco_prod` DECIMAL(7,2) NOT NULL,
  `status_entrega` TINYINT NOT NULL,
  `fk_id_cliente` INT NOT NULL,
  `fk_id_pagto` INT NOT NULL,
  PRIMARY KEY (`id_pedido`),
  INDEX `fk_tbl_pedidos_tbl_clientes1_idx` (`fk_id_cliente` ASC),
  INDEX `fk_tbl_pedidos_tbl_pagtos1_idx` (`fk_id_pagto` ASC),
  CONSTRAINT `fk_tbl_pedidos_tbl_clientes1`
    FOREIGN KEY (`fk_id_cliente`)
    REFERENCES `bd_veiculos_tcc`.`tbl_clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_pedidos_tbl_pagtos1`
    FOREIGN KEY (`fk_id_pagto`)
    REFERENCES `bd_veiculos_tcc`.`tbl_pagtos` (`id_pagto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_veiculos_tcc`.`tbl_produtos` (
  `id_prod` INT NOT NULL AUTO_INCREMENT,
  `nome_prod` VARCHAR(60) NOT NULL,
  `categoria_prod` VARCHAR(45) NOT NULL,
  `preco_custo_prod` DECIMAL(6,2) NOT NULL,
  `desc_prod` VARCHAR(200) NOT NULL,
  `foto_prod` VARCHAR(120) NOT NULL,
  `data_upload` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qtd_estoque` INT NOT NULL,
  PRIMARY KEY (`id_prod`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `bd_veiculos_tcc`.`tbl_vendas` (
  `id_venda` INT NOT NULL AUTO_INCREMENT,
  `qtd_comprada` INT NOT NULL,
  `val_pagto_prod` DECIMAL(7,2) NOT NULL,
  `fk_cod_prod` INT NOT NULL,
  `fk_id_pedido` INT NOT NULL,
  PRIMARY KEY (`id_venda`),
  INDEX `fk_tbl_produtos_has_tbl_pedidos_tbl_pedidos1_idx` (`fk_id_pedido` ASC),
  INDEX `fk_tbl_produtos_has_tbl_pedidos_tbl_produtos1_idx` (`fk_cod_prod` ASC),
  CONSTRAINT `fk_tbl_produtos_has_tbl_pedidos_tbl_produtos1`
    FOREIGN KEY (`fk_cod_prod`)
    REFERENCES `bd_veiculos_tcc`.`tbl_produtos` (`id_prod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_produtos_has_tbl_pedidos_tbl_pedidos1`
    FOREIGN KEY (`fk_id_pedido`)
    REFERENCES `bd_veiculos_tcc`.`tbl_pedidos` (`id_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

--
-- Extraindo dados da tabela `tbl_dados_pessoais`
--

INSERT INTO `tbl_dados_pessoais` (`cpf`, `nome`, `email`, `senha`, `telefone`, `categoria`, `foto_perfil`) VALUES
('123.546.898-98', 'Matheus Aurélio', 'matheusaurelio@gmail.com', '$2y$10$fW5/ABJYiVqwDqYIuvLgTelYsJaJXSuqSEOM6DJOdvcpHL2TqsGAG', '(12) 98743-3333', 'cliente', ''),
('789.656.565-65', 'José Silva', 'jose@gmail.com', '$2y$10$S2AXAb2JHhskRY3ZuCEmpeB7IUd94FkFzVDF0uS75g9b56PG1n1jy', '(87) 99888-7777', 'mecanico', 'fotografia-para-perfil.jpg'),
('125.698.984-54', 'Aurélio Silva', 'aurelio123@gmail.com', '$2y$10$OiuK0G/Z38Kx63tOqQTCEeSN07Js5p39gUTm8uNTVYoSkBnN4JfbG', '(12) 98755-4545', 'mecanico', ''),
('789.445.646-54', 'Rodolfo Pereira', 'rodolfop@gmail.com', '$2y$10$6LIDFLjEgOlFcwVU/.NE0.r25DGWirtmQ4ZTJEGIGYEl0LIxqAq02', '(18) 98965-4646', 'mecanico', ''),
('546.545.646-52', 'João Ferreira', 'joaoferreira@gmail.com', '$2y$10$jV2bqm31MpMLY7rwn5yY4.9aPVdnN3D3HauzFcVwTpqHEktSpuil6', '(12) 99875-3665', 'cliente', '12-129046_like-imagem-de-fundo-png-like.png'),
('897.986.521-66', 'Felipe Rodrigues', 'feliperodrigues@gmail.com', '$2y$10$IMM4nNIZbY9kPPUa63zei.rr49VUJr7unIHsYDfMIkg9Y1IgDKZ8a', '(12) 98785-4654', 'cliente', '12-129046_like-imagem-de-fundo-png-like.png');

--
-- Extraindo dados da tabela `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`data_criacao`, `data_atualizacao`, `fk_id_dados_pessoais`) VALUES
('2022-05-27', NULL, last_insert_id()),
('2022-04-09', NULL, last_insert_id()),
('2022-05-09', NULL, last_insert_id()),
('2022-04-18', NULL, last_insert_id());

--
-- Extraindo dados da tabela `tbl_produtos`
--

INSERT INTO `tbl_produtos` (`nome_prod`, `categoria_prod`, `preco_custo_prod`, `desc_prod`, `foto_prod`, `data_upload`, `qtd_estoque`) VALUES
('Rodas Fiat Argo', 'Rodas', '120.00', 'ewre', '../../../uploads/6276ae39d573f.jpg', '2022-05-07 14:36:57', 5),
('Óleo 2 tempos', 'Óleo', '129.99', 'Oleo 2t', '../../../uploads/6276aee3479ca.jpg', '2022-05-07 14:39:47', 5),
('Filtro ar Jetta', 'Filtros de ar', '589.79', 'Filtro Kn Jetta', '../../../uploads/6276b5b63dfa6.png', '2022-05-07 15:08:54', 0),
('Filtro ar Jetta', 'Filtros de ar', '1200.00', 'Filtro de ar kn para Jetta TSI 2010 - 2018', '../../../uploads/6276fb3e342ad.png', '2022-05-07 20:05:34', 29),
('Óleo 2 tempos', 'Óleo', '1200.00', 'Oleo de qualidade impecável', '../../../uploads/6276fcc29b2c4.jpg', '2022-05-07 20:12:02', 0),
('Filtro de ar Tucson', 'Filtros de ar', '1200.00', 'Filtro de ar Tucson 2012', '../../../uploads/627c6065b584a.jpg', '2022-05-11 22:18:29', 10),
('Filtro ar Tucson', 'Filtros de ar', '99.99', 'Filtro de ar Tucson Sportage 2011 - 2012', '../../../uploads/627c629ebb1b3.jpg', '2022-05-11 22:27:58', 2),
('Rodas Fiat Argo', 'Rodas', '120.00', 'wkhw', '../../../uploads/627d8ec7899ca.jpg', '2022-05-12 19:48:39', 5),
('Óleo 4 tempos', 'Óleo', '89.99', 'Óleo Lubrax 10W30 Indicc para Moto 4 Tempos', '../../../627ea7c772ac8.jpg', '2022-05-13 15:47:35', 6),
('Óleo 4 tempos', 'Óleo', '59.99', 'Oleo 4 tempos 10w40', '../../../627f087941a9c.jpg', '2022-05-13 22:40:09', 4),
('Óleo 4 tempos', 'Óleo', '58.88', 'Oleo 4t 10w40', '../../../627f09c5bbfbe.jpg', '2022-05-13 22:45:41', 5),
('Óleo 2 tempos', 'Óleo', '89.99', 'Oleo 2t castrol', '../../../uploads/627f0aa3daaca.jpg', '2022-05-13 22:49:23', 5),
('Rodas Fiat Toro', 'Rodas', '2999.99', 'Jogo de roda aro 18 nova fiat toro volcano 2020', '../../../uploads/627faf89b119d.jpg', '2022-05-14 10:32:57', 0),
('Filtro ar Tucson', 'Filtros de ar', '990.00', 'Filtro de ar Tucson Sportage ', '../../../uploads/627fe9426f39a.jpg', '2022-05-14 14:39:14', 5),
('Rodas Fiat Toro', 'Rodas', '2999.99', 'Rodas Fiat Argo 2018', '../../../uploads/627fefbb72504.jpg', '2022-05-14 15:06:51', 5),
('Filtro ar Jetta', 'Filtros de ar', '899.90', 'Filtro de ar Kn Jetta TSI', '../../../uploads/627ff046a8cfa.png', '2022-05-14 15:09:10', 15),
('Filtro ar Fazer', 'Filtros de ar', '769.99', 'FILTRO DE AR ESPORTIVO K&N YAMAHA FAZER 800 E 1000 / K&N YA-1006', '../../../uploads/6281338cc4f09.jpg', '2022-05-15 14:08:28', 1),
('Rodas aro 17', 'Rodas', '899.90', 'Rodas Fiat Toro 2018 - 2022 aro 17', '../../../uploads/6282b55e94d2d.jpg', '2022-05-16 17:34:38', 4),
('Filtro ar Jetta', 'Filtros de ar', '789.99', 'Filtro de ar KN', '../../../uploads/6282d01432f46.png', '2022-05-16 19:28:36', 3),
('Óleo 4 tempos', 'Oleo', '187.99', 'Oleo 4t', '../../../uploads/6282d20226369.jpg', '2022-05-16 19:36:50', 4),
('Rodas Fiat Argo', 'Rodas', '999.99', 'Rodas Fiat Argo 17', '../../../uploads/6282d3613e542.jpg', '2022-05-16 19:42:41', 4),
('Óleo 2 tempos', 'Oleo', '99.99', 'Oleo Castrol 2t', '../../../uploads/6282d699c7fe2.jpg', '2022-05-16 19:56:25', 4);

--
-- Extraindo dados da tabela `tbl_pagtos`
--

INSERT INTO `tbl_pagtos` (`tipo_pagto`, `num_cartao`, `status_pagto`, `data_pagto`, `val_frete`) VALUES
('boleto', NULL, 1, '2022-05-19', NULL),
('cartão', '123897454', 1, '2022-05-10', NULL),
('cartão', '897894665', 2, '2022-04-01', '200.00'),
('boleto', NULL, 2, '2022-04-20', NULL),
('boleto', '549489488', 1, '2022-05-01', '90.00');

--
-- Extraindo dados da tabela `tbl_pedidos`
--

INSERT INTO `tbl_pedidos` (`data_pedido`, `preco_unit_prod`, `qtd_prod`, `qtd_parcelas`, `total_preco_prod`, `status_entrega`, `fk_id_cliente`, `fk_id_pagto`) VALUES
('2022-05-19', '999.99', 1, 1, '999.99', 2, last_insert_id(), last_insert_id());

--
-- Estrutura para vista `vw_dados_pedidos`
--

create or replace view dados_pedidos as
select 
    tbl_pedidos.data_pedido, 
    tbl_pedidos.qtd_prod, 
    tbl_pedidos.total_preco_prod, 
    tbl_pedidos.status_entrega, 
    tbl_pedidos.fk_id_cliente, 
    tbl_pedidos.fk_id_pagto,
    tbl_pagtos.status_pagto,
    tbl_pagtos.val_frete,
    tbl_dados_pessoais.nome,
    tbl_dados_pessoais.foto_perfil
from tbl_pedidos
inner join tbl_pagtos 
on tbl_pedidos.fk_id_pagto = tbl_pagtos.id_pagto
inner join tbl_clientes
on tbl_pedidos.fk_id_cliente = tbl_clientes.id_cliente
inner join tbl_dados_pessoais
on tbl_clientes.fk_id_dados_pessoais = tbl_dados_pessoais.id_dados_pessoais;