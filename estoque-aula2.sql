-- Script Banco de Dados SIGA - Aula 02
-- Professora Júnior Gonçalves


CREATE TABLE tb_notas_fiscais (
  id_nota_fiscal INT PRIMARY KEY AUTO_INCREMENT,
  id_fornecedor INT NOT NULL,
  data_nf DATE NOT NULL,
  numero VARCHAR(45) NOT NULL,
  total DECIMAL(8,2) NOT NULL,
  FOREIGN KEY (id_fornecedor) REFERENCES tb_fornecedores(id_fornecedor)
);

CREATE TABLE tb_itens_nf (
  id_itens_nf INT PRIMARY KEY AUTO_INCREMENT,
  id_material INT NOT NULL,
  id_nota_fiscal INT NOT NULL,
  quantidade INT NOT NULL,
  valor_unitario DECIMAL(8,2) NOT NULL,
  FOREIGN KEY (id_material) REFERENCES tb_materiais(id_material),
  FOREIGN KEY (id_nota_fiscal) REFERENCES tb_notas_fiscais(id_nota_fiscal)
);

CREATE TABLE tb_requisicoes (
  id_requisicao INT PRIMARY KEY AUTO_INCREMENT,
  id_departamento INT NOT NULL,
  data_requisicao DATE NOT NULL,
  FOREIGN KEY (id_departamento) REFERENCES tb_departamentos(id_departamento)
);

CREATE TABLE tb_itens_requisicao (
  id_itens_requicao INT PRIMARY KEY AUTO_INCREMENT,
  id_requisicao INT NOT NULL,
  id_material INT NOT NULL,
  quantidade INT NOT NULL,
  FOREIGN KEY (id_requisicao) REFERENCES tb_requisicoes(id_requisicao),
  FOREIGN KEY (id_material) REFERENCES tb_materiais(id_material)
);


-- Nota fiscal 1
INSERT INTO tb_notas_fiscais (id_fornecedor, data_nf, numero, total) VALUES
(1, '2024-06-03', 'NF20240601', 1237.20);
-- Itens da Nota fiscal 1
INSERT INTO tb_itens_nf (id_material, id_nota_fiscal, quantidade, valor_unitario) VALUES
(1, 1, 20, 21.34),
(2, 1, 15, 28.52),
(3, 1, 10, 38.26);


-- Nota fiscal 2
INSERT INTO tb_notas_fiscais (id_fornecedor, data_nf, numero, total) VALUES
(2, '2024-06-03', 'NF20240602', 613.92);
-- Itens da Nota fiscal 2
INSERT INTO tb_itens_nf (id_material, id_nota_fiscal, quantidade, valor_unitario) VALUES
(5, 2, 10, 21.90),
(6, 2, 18, 22.39);

-- Nota fiscal 3
INSERT INTO tb_notas_fiscais (id_fornecedor, data_nf, numero, total) VALUES
(3, '2024-06-04', 'NF20240603', 343.35);
-- Itens da Nota fiscal 3
INSERT INTO tb_itens_nf (id_material, id_nota_fiscal, quantidade, valor_unitario) VALUES
(7, 3, 15, 2.89),
(8, 3, 20, 7.50),
(9, 3, 10, 15.00);

-- Nota fiscal 4
INSERT INTO tb_notas_fiscais (id_fornecedor, data_nf, numero, total) VALUES
(4, '2024-06-04', 'NF20240604', 282.35);
-- Itens da Nota fiscal 4
INSERT INTO tb_itens_nf (id_material, id_nota_fiscal, quantidade, valor_unitario) VALUES
(10, 4, 20, 3.80),
(11, 4, 15, 2.99),
(13, 4, 15, 5.50),
(14, 4, 4, 6.00),
(12, 4, 10, 5.50);

-- Nota fiscal 5
INSERT INTO tb_notas_fiscais (id_fornecedor, data_nf, numero, total) VALUES
(5, '2024-06-05', 'NF20240605', 500.50);
-- Itens da Nota fiscal 5
INSERT INTO tb_itens_nf (id_material, id_nota_fiscal, quantidade, valor_unitario) VALUES
(14, 5, 20, 5.00),
(15, 5, 45, 8.90);

-- Nota fiscal 6
INSERT INTO tb_notas_fiscais (id_fornecedor, data_nf, numero, total) VALUES
(6, '2024-06-05', 'NF20240606', 87.00);
-- Itens da Nota fiscal 6
INSERT INTO tb_itens_nf (id_material, id_nota_fiscal, quantidade, valor_unitario) VALUES
(1, 6, 12, 3.75),
(3, 6, 8, 5.25);

-- Nota fiscal 7
INSERT INTO tb_notas_fiscais (id_fornecedor, data_nf, numero, total) VALUES
(7, '2024-06-05', 'NF20240607', 818.00);
-- Itens da Nota fiscal 7
INSERT INTO tb_itens_nf (id_material, id_nota_fiscal, quantidade, valor_unitario) VALUES
(22, 7, 25, 11.50),
(23, 7, 10, 12.90),
(24, 7, 20, 6.90),
(25, 7, 10, 2.05),
(26, 7, 10, 7.20),
(27, 7, 15, 11.40);

-- Nota fiscal 8
INSERT INTO tb_notas_fiscais (id_fornecedor, data_nf, numero, total) VALUES
(8, '2024-06-08', 'NF20240608', 335.00);
-- Itens da Nota fiscal 8
INSERT INTO tb_itens_nf (id_material, id_nota_fiscal, quantidade, valor_unitario) VALUES
(21, 8, 10, 33.50);


-- Nota fiscal 9
INSERT INTO tb_notas_fiscais (id_fornecedor, data_nf, numero, total) VALUES
(6, '2024-06-08', 'NF20240609', 34.00);

-- Itens da Nota fiscal 9
INSERT INTO tb_itens_nf (id_material, id_nota_fiscal, quantidade, valor_unitario) VALUES
(37, 10, 1, 34.00);


INSERT INTO tb_requisicoes (id_departamento, data_requisicao) VALUES
(1, '2024-06-03'),
(2, '2024-06-03'),
(3, '2024-06-04'),
(4, '2024-06-05'),
(1, '2024-06-05');

INSERT INTO tb_itens_requisicao (id_requisicao, id_material, quantidade) VALUES
-- Itens da Requisição 1
(1, 1, 10),
(1, 3, 5),
(1, 14, 20),
-- Itens da Requisição 2
(2, 14, 15),
(2, 15, 10),
(2, 3, 25),
-- Itens da Requisição 3
(3, 10, 12),
(3, 11, 8),
(3, 13, 1),
(3, 14, 3),
(3, 15, 5),
-- Itens da Requisição 4
(4, 22, 7),
(4, 23, 14),
(4, 24, 8),
(4, 25, 11),
(4, 26, 12),
(4, 14, 5),
(4, 15, 7),
-- Itens da Requisição 5
(5, 13, 9),
(5, 15, 16);
