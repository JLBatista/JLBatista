CREATE TABLE tb_fornecedores (
  id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
  fornecedor VARCHAR(100) NOT NULL,
  cidade VARCHAR(60) NOT NULL,
  contato VARCHAR(60) NOT NULL,
  telefone VARCHAR(15) NULL
);

CREATE TABLE tb_departamentos (
  id_departamento INT PRIMARY KEY AUTO_INCREMENT,
  departamento VARCHAR(45) NOT NULL,
  responsavel VARCHAR(45) NULL
);

CREATE TABLE tb_segmentos (
  id_segmento INT PRIMARY KEY AUTO_INCREMENT,
  segmento VARCHAR(45) NOT NULL
);

CREATE TABLE tb_materiais (
  id_material INT PRIMARY KEY AUTO_INCREMENT,
  id_fornecedor INT NOT NULL,
  id_segmento INT NOT NULL,
  codigo VARCHAR(45) NOT NULL,
  descricao VARCHAR(100) NOT NULL,
  localizacao VARCHAR(45) NULL,
  qtd_minima INT NOT NULL,
  qtd_atual INT NOT NULL,
  FOREIGN KEY (id_fornecedor) REFERENCES tb_fornecedores(id_fornecedor),
  FOREIGN KEY (id_segmento) REFERENCES tb_segmentos(id_segmento)
);

INSERT INTO tb_fornecedores (fornecedor, cidade, contato, telefone) VALUES
('Limpeza Total', 'Campinas', 'João da Silva', '19987654321'),
('Higiene Pro', 'Mogi Mirim', 'Maria de Souza', '19987654322'),
('Escritório Central', 'Mogi Mirim', 'Carlos Pereira', ''),
('Papelaria Escolar', 'Mogi Mirim', 'Ana Oliveira', ''),
('Distribuidora Diversos', 'Itapira', 'Fernanda Lima', '19987654326'),
('Suprimentos Office', 'Campinas', 'Roberto Costa', ''),
('Papelaria Criativa', 'Campinas', 'Luciana Rocha', ''),
('Mercado Alimentar', 'Itapira', 'Gabriel Fernandes', ''),
('Variedades Norte', 'Campinas', 'Mariana Castro', '');

INSERT INTO tb_departamentos (departamento, responsavel) VALUES
('Recursos Humanos', 'Ana Paula Silva'),
('Contabilidade', 'Carlos Eduardo Oliveira'),
('Administração', 'Mariana Souza'),
('Ambulatório', 'Rafael Almeida');

INSERT INTO tb_segmentos (segmento) VALUES
('Limpeza'),
('Higiene'),
('Escritório'),
('Papelaria'),
('Alimentos'),
('Diversos');

INSERT INTO tb_materiais (id_fornecedor, id_segmento, codigo, descricao, localizacao, qtd_minima, qtd_atual) VALUES
-- Materiais de Limpeza
(1, 1, 'LIMP001', 'Detergente Multiuso', 'A1-01', 10, 7),
(1, 1, 'LIMP002', 'Desinfetante', 'A1-02', 15, 15),
(1, 1, 'LIMP003', 'Limpa Vidros', 'A1-03', 10, 11),
(1, 1, 'LIMP004', 'Desengordurante', 'A1-04', 5, 0),
-- Materiais de Higiene
(2, 2, 'HIG001', 'Sabonete Líquido', 'B1-01', 10, 34),
(2, 2, 'HIG002', 'Papel Higiênico', 'B1-02', 15, 30),
(2, 2, 'HIG003', 'Creme Dental', 'B1-03', 10, 20),
(2, 2, 'HIG004', 'Fio Dental', 'B1-04', 5, 0),
(2, 2, 'HIG005', 'Enxaguante Bucal', 'B1-05', 5, 0),
-- Materiais de Escritório
(3, 3, 'ESCR001', 'Papel Sulfite A4', 'C1-01', 10, 100),
(3, 3, 'ESCR002', 'Caneta Esferográfica', 'C1-02', 15, 90),
(3, 3, 'ESCR003', 'Bloco de Notas', 'C1-03', 20, 25),
(3, 3, 'ESCR004', 'Clips Metálicos', 'C1-04', 5, 2),
(3, 3, 'ESCR005', 'Grampeador', 'C1-05', 3, 5),
(3, 3, 'ESCR006', 'Caderno Universitário', 'D1-01', 5, 0),
(3, 3, 'ESCR007', 'Lápis de Cor', 'D1-02', 5, 0),
(3, 3, 'ESCR008', 'Borracha', 'D1-03', 20, 50),
(3, 3, 'ESCR009', 'Caneta Marca Texto', 'D1-04', 25, 10),
(3, 3, 'ESCR010', 'Fita Adesiva', 'F1-02', 15, 0),
(3, 3, 'ESCR011', 'Tesoura', 'F1-03', 10, 0),
-- Materiais de Alimentos
(5, 5, 'ALIM001', 'Arroz kg', 'E1-01', 10, 50),
(5, 5, 'ALIM002', 'Feijão 2kg', 'E1-02', 15, 74),
(5, 5, 'ALIM003', 'Macarrão 1Kg', 'E1-03', 20, 80),
(5, 5, 'ALIM004', 'Óleo de Soja', 'E1-04', 25, 40),
(5, 5, 'ALIM005', 'Sal', 'E1-05', 10, 25),
(5, 5, 'ALIM006', 'Açúcar', 'E1-06', 25, 75),
(5, 5, 'ALIM007', 'Café', 'E1-07', 15, 40),
(5, 5, 'ALIM008', 'Leite em Pó', 'E1-08', 20, 90),
(5, 5, 'ALIM009', 'Biscoito Recheado', 'E1-09', 50, 100),
(8, 5, 'ALIM010', 'Macarrão Instantâneo', 'E1-10', 55, 10),
(8, 5, 'ALIM011', 'Feijão Preto', 'E1-11', 60, 20),
(8, 5, 'ALIM012', 'Arroz Integral', 'E1-12', 15, 0),
(8, 5, 'ALIM013', 'Óleo de Canola', 'E1-13', 10, 7),
(8, 5, 'ALIM014', 'Sal Marinho', 'E1-14', 20, 0),
(8, 5, 'ALIM015', 'Farinha de Trigo', 'E1-15', 30, 100),
-- Materiais Diversos
(6, 6, 'DIV004', 'Pilhas AA', 'F1-04', 5, 0),
(6, 6, 'DIV005', 'Lanterna', 'F1-05', 5, 2);
