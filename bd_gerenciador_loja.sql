-- Banco de dados: gerenciador_loja_roupas_253
--
-- --------------------------------------------------------
--
-- Estrutura para tabela bairro
--
CREATE TABLE bairro (
id_bairro int(11) NOT NULL,
nome varchar(100) NOT NULL,
id_cidade int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela bairro
--

INSERT INTO bairro ( id_bairro , nome , id_cidade ) VALUES
(1, 'Estreito', 1),
(2, 'Baraúnas', 2),
(3, 'Montrose', 3),
(4, 'Ximending', 4),
(5, 'La Rambla', 5);
-- -----------------------------------------------------
---
--
-- Estrutura para tabela categoria
--
CREATE TABLE categoria (
id_categoria int(11) NOT NULL,
nome varchar(100) NOT NULL,
descricao varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela categoria
--
INSERT INTO categoria ( id_categoria , nome , descricao ) VALUES
(1, 'Camiseta', 'Parte de cima da roupa '),
(2, 'Calça', 'Parte de baixo da peça de roupa'),
(3, 'Moletom', 'Parte de cima, geralmente utilizado no frio'),
(4, 'Regata', 'Parte de cima do conjunto de roupa, geralmente utilizada
no calor'),
(5, 'Bermuda', 'Parte de baixo do conjunto de roupa, geralmente
utilizada no calor');
-- --------------------------------------------------------
--
-- Estrutura para tabela cidade
--
CREATE TABLE cidade (
id_cidades int(11) NOT NULL,
nome varchar(100) NOT NULL,
id_estado int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela cidade
--
INSERT INTO cidade ( id_cidades , nome , id_estado ) VALUES
(1, 'Florianópolis', 1),

(2, 'Feira Santana', 2),
(3, 'Houston', 3),
(4, 'Taiwan', 4),
(5, 'Badalona', 5);
-- --------------------------------------------------------
--
-- Estrutura para tabela clientes
--
CREATE TABLE clientes (
id_cliente int(11) NOT NULL,
CPF varchar(11) NOT NULL,
nome varchar(100) NOT NULL,
data_nascimento date NOT NULL,
telefone varchar(20) NOT NULL,
email varchar(250) NOT NULL,
id_endereco int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela clientes
--
INSERT INTO clientes ( id_cliente , CPF , nome , data_nascimento ,
telefone , email , id_endereco ) VALUES
(1, '11122233344', 'Fernanda Costa', '1988-04-10', '(11) 92345-6789',
'fernanda.costa@gmail.com', 1),
(2, '55566677766', 'Rafael Menezes', '1992-09-15', '(21) 93456-7890',
'rafael.menezes@gmail.com', 2),
(3, '99988877766', 'Camila Santos', '1980-01-20', '(31) 94567-8901',
'camila.santos@gmail.com', 3),
(4, '33344455522', 'Pedro Araújo', '1975-11-30', '(41) 95678-9012',
'pedro.araujo@gmail.com', 4),
(5, '77788899911', 'Larissa Almeida', '2002-05-25', '(51) 96789-0123',
'larissa.almeida@gmail.com', 5);
-- --------------------------------------------------------
--
-- Estrutura para tabela compras
--
CREATE TABLE compras (
id_compras int(11) NOT NULL,
data_compra date NOT NULL,
total_compra float NOT NULL,
id_fornecedor int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela compras
--
INSERT INTO compras ( id_compras , data_compra , total_compra ,
id_fornecedor ) VALUES
(1, '2001-01-01', 349, 1),
(2, '2001-02-02', 20, 2),
(3, '2001-03-03', 159, 3),
(4, '2001-04-04', 50, 4),
(5, '2001-05-05', 1.788, 5);
-- --------------------------------------------------------
--
-- Estrutura para tabela endereco
--
CREATE TABLE endereco (
id_endereco int(11) NOT NULL,
id_rua int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela endereco
--
INSERT INTO endereco ( id_endereco , id_rua ) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
-- --------------------------------------------------------
--
-- Estrutura para tabela estado
--
CREATE TABLE estado (
id_estado int(11) NOT NULL,
nome varchar(100) NOT NULL,
sigla varchar(2) NOT NULL,
id_pais int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela estado
--

INSERT INTO estado ( id_estado , nome , sigla , id_pais ) VALUES
(1, 'Santa Catarina', 'SC', 1),
(2, 'Bolivar', 'BS', 2),
(3, 'Texas', 'TX', 3),
(4, 'Fujian', 'MI', 4),
(5, 'Barcelona', 'BC', 5);
-- --------------------------------------------------------
--
-- Estrutura para tabela estoque
--
CREATE TABLE estoque (
id_estoque int(11) NOT NULL,
estoque int(11) NOT NULL,
data_validade date NOT NULL,
data_fabricacao date NOT NULL,
estoque_minimo int(11) NOT NULL,
estoque_maximo int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela estoque
--
INSERT INTO estoque ( id_estoque , estoque , data_validade ,
data_fabricacao , estoque_minimo , estoque_maximo ) VALUES
(1, 50, '2024-12-31', '2024-01-15', 10, 100),
(2, 30, '2025-05-15', '2023-11-20', 5, 60),
(3, 20, '2025-02-28', '2024-08-10', 8, 50),
(4, 40, '2024-07-20', '2023-12-01', 15, 80),
(5, 60, '2025-01-30', '2024-02-05', 20, 120);
-- --------------------------------------------------------
--
-- Estrutura para tabela fornecedores
--
CREATE TABLE fornecedores (
id_fornecedores int(11) NOT NULL,
nome varchar(100) NOT NULL,
telefone varchar(14) NOT NULL,
email varchar(250) NOT NULL,
CNPJ varchar(20) NOT NULL,
id_endereco int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela fornecedores

--
INSERT INTO fornecedores ( id_fornecedores , nome , telefone ,
email , CNPJ , id_endereco ) VALUES
(1, 'Moda Fashion Ltda', '(11) 91234-567', 'contato@modafashion.com',
'12.345.678/0001-90', 1),
(2, 'Estilo & Elegância SA', '(21) 99876-543',
'vendas@estiloelegancia.com', '23.456.789/0001-01', 2),
(3, 'Roupa Fina Comércio', '(31) 98765-432',
'atendimento@roupafina.com', '34.567.890/0001-12', 3),
(4, 'Confecções Silva ME', '(41) 96543-210', 'suporte@confsilva.com',
'45.678.901/0001-23', 4),
(5, 'Top Trends Comércio', '(51) 94321-098', 'info@toptrends.com',
'56.789.012/0001-34', 5);
-- --------------------------------------------------------
--
-- Estrutura para tabela funcionarios
--
CREATE TABLE funcionarios (
id_funcionario int(11) NOT NULL,
CPF varchar(20) NOT NULL,
nome varchar(100) NOT NULL,
data_nascimento date NOT NULL,
telefone varchar(14) NOT NULL,
email varchar(250) NOT NULL,
id_endereco int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela funcionarios
--
INSERT INTO funcionarios ( id_funcionario , CPF , nome ,
data_nascimento , telefone , email , id_endereco ) VALUES
(1, '123.456.789-01', 'João Silva', '1985-06-15', '(11) 91234-567',
'joao.silva@gmail.com', 1),
(2, '987.654.321-02', 'Maria Oliveira', '1990-03-22', '(21) 99876-543',
'maria.oliveira@gmail.com', 2),
(3, '456.123.789-03', 'Carlos Souza', '1978-12-10', '(31) 98765-432',
'carlos.souza@gmail.com', 3),
(4, '321.654.987-04', 'Ana Pereira', '2000-07-05', '(41) 96543-210',
'ana.pereira@gmail.com', 4),
(5, '789.123.456-05', 'Lucas Almeida', '1995-11-25', '(51) 94321-098',
'lucas.almeida@gmail.com', 5);
-- --------------------------------------------------------
--

-- Estrutura para tabela itens_pedido
--
CREATE TABLE itens_pedido (
id_itenspedido int(11) NOT NULL,
quantidade int(11) DEFAULT NULL,
preco_unitario float NOT NULL,
id_produto int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela itens_pedido
--
INSERT INTO itens_pedido ( id_itenspedido , quantidade ,
preco_unitario , id_produto ) VALUES
(1, 3, 49.9, 1),
(2, 2, 89.5, 2),
(3, 5, 29.99, 3),
(4, 1, 199.99, 4),
(5, 10, 15.75, 5);
-- --------------------------------------------------------
--
-- Estrutura para tabela pagamentos
--
CREATE TABLE pagamentos (
id_pagamento int(11) NOT NULL,
forma_pagamento varchar(10) NOT NULL,
data_pagamento date NOT NULL,
total_compra float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela pagamentos
--
INSERT INTO pagamentos ( id_pagamento , forma_pagamento ,
data_pagamento , total_compra ) VALUES
(1, 'Crédito', '2001-01-01', 349),
(2, 'Debito', '2001-02-02', 20),
(3, 'Boleto', '2001-03-03', 159),
(4, 'Pix', '2001-04-04', 50),
(5, 'Pix', '2001-05-05', 1.788);
-- --------------------------------------------------------
--
-- Estrutura para tabela pais

--
CREATE TABLE pais (
id_pais int(11) NOT NULL,
codigo int(11) NOT NULL,
nome varchar(100) NOT NULL,
sigla varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela pais
--
INSERT INTO pais ( id_pais , codigo , nome , sigla ) VALUES
(1, 55, 'Brasil', 'BR'),
(2, 58, 'Venezuela', 'VE'),
(3, 1, 'Estados Unidos', 'EUA'),
(4, 86, 'China', 'CN'),
(5, 34, 'Espanha', 'ES');
-- --------------------------------------------------------
--
-- Estrutura para tabela pedidos
--
CREATE TABLE pedidos (
id_pedido int(11) NOT NULL,
id_cliente int(11) NOT NULL,
id_pagamentos int(11) NOT NULL,
id_itenspedido int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela pedidos
--
INSERT INTO pedidos ( id_pedido , id_cliente , id_pagamentos ,
id_itenspedido ) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);
-- --------------------------------------------------------
--
-- Estrutura para tabela produtos
--

CREATE TABLE produtos (
id_produtos int(11) NOT NULL,
nome varchar(100) NOT NULL,
descricao varchar(250) NOT NULL,
preco_venda float NOT NULL,
preco_compra float NOT NULL,
id_fornecedor int(11) NOT NULL,
id_categoria int(11) NOT NULL,
id_estoque int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela produtos
--
INSERT INTO produtos ( id_produtos , nome , descricao ,
preco_venda , preco_compra , id_fornecedor , id_categoria ,
id_estoque ) VALUES
(1, 'Camiseta', 'camiseta branca de algodão, manga curta', 49, 25, 1,
1, 1),
(2, 'Calça jeans', 'Calça jeans azul, corte reto', 119, 60, 1, 1, 1),
(3, 'Moletom', 'Moletom cinza', 300, 150, 1, 1, 1),
(4, 'Regata', 'Regata vermelha', 200, 100, 1, 1, 1),
(5, 'Bermuda', 'Bermuda jeans verde de tactel', 300, 200, 1, 1, 1);
-- --------------------------------------------------------
--
-- Estrutura para tabela relatorio_venda
--
CREATE TABLE relatorio_venda (
id_relatoriovenda int(11) NOT NULL,
descricao varchar(250) NOT NULL,
id_venda int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela relatorio_venda
--
INSERT INTO relatorio_venda ( id_relatoriovenda , descricao ,
id_venda ) VALUES
(1, 'Venda realizada com sucesso. Cliente satisfeito.', 1),
(2, 'Venda cancelada devido à falta de estoque.', 2),
(3, 'Venda concluída. Pagamento aprovado e enviado ao cliente.', 3),
(4, 'Venda pendente. Aguardando confirmação do pagamento.', 4),
(5, 'Venda devolvida. Produto com defeito reportado.', 5);
-- --------------------------------------------------------

--
-- Estrutura para tabela rua
--
CREATE TABLE rua (
id_rua int(11) NOT NULL,
nome varchar(100) NOT NULL,
CEP float NOT NULL,
id_bairro int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela rua
--
INSERT INTO rua ( id_rua , nome , CEP , id_bairro ) VALUES
(1, 'Rua General Eurico Gaspar Dutra', 88075, 1),
(2, 'Troncal 12', 8007, 2),
(3, 'Westheimer Road', 77006, 3),
(4, 'Hanzhong Street ', 108, 4),
(5, 'Las Ramblas ', 8002, 5);
-- --------------------------------------------------------
--
-- Estrutura para tabela vendas
--
CREATE TABLE vendas (
id_venda int(11) NOT NULL,
id_funcionario int(11) NOT NULL,
id_pedido int(11) NOT NULL,
data_venda date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Despejando dados para a tabela vendas
--
INSERT INTO vendas ( id_venda , id_funcionario , id_pedido ,
data_venda ) VALUES
(1, 1, 1, '2024-08-08'),
(2, 2, 2, '2024-08-09'),
(3, 3, 3, '2024-08-10'),
(4, 4, 4, '2024-08-11'),
(5, 5, 5, '2024-08-12');
--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela bairro
--
ALTER TABLE bairro
ADD PRIMARY KEY ( id_bairro ),
ADD KEY id_cidade ( id_cidade );
--
-- Índices de tabela categoria
--
ALTER TABLE categoria
ADD PRIMARY KEY ( id_categoria );
--
-- Índices de tabela cidade
--
ALTER TABLE cidade
ADD PRIMARY KEY ( id_cidades ),
ADD KEY id_estado ( id_estado );
--
-- Índices de tabela clientes
--
ALTER TABLE clientes
ADD PRIMARY KEY ( id_cliente ),
ADD KEY id_endereco ( id_endereco );
--
-- Índices de tabela compras
--
ALTER TABLE compras
ADD PRIMARY KEY ( id_compras ),
ADD KEY id_fornecedor ( id_fornecedor );
--
-- Índices de tabela endereco
--
ALTER TABLE endereco
ADD PRIMARY KEY ( id_endereco ),
ADD KEY id_rua ( id_rua );
--
-- Índices de tabela estado
--
ALTER TABLE estado
ADD PRIMARY KEY ( id_estado ),
ADD KEY id_pais ( id_pais );
--
-- Índices de tabela estoque
--

ALTER TABLE estoque
ADD PRIMARY KEY ( id_estoque );
--
-- Índices de tabela fornecedores
--
ALTER TABLE fornecedores
ADD PRIMARY KEY ( id_fornecedores ),
ADD KEY id_endereco ( id_endereco );
--
-- Índices de tabela funcionarios
--
ALTER TABLE funcionarios
ADD PRIMARY KEY ( id_funcionario ),
ADD KEY id_endereco ( id_endereco );
--
-- Índices de tabela itens_pedido
--
ALTER TABLE itens_pedido
ADD PRIMARY KEY ( id_itenspedido ),
ADD KEY id_produto ( id_produto );
--
-- Índices de tabela pagamentos
--
ALTER TABLE pagamentos
ADD PRIMARY KEY ( id_pagamento );
--
-- Índices de tabela pais
--
ALTER TABLE pais
ADD PRIMARY KEY ( id_pais );
--
-- Índices de tabela pedidos
--
ALTER TABLE pedidos
ADD PRIMARY KEY ( id_pedido ),
ADD KEY id_cliente ( id_cliente ),
ADD KEY id_pagamentos ( id_pagamentos ),
ADD KEY id_itenspedido ( id_itenspedido );
--
-- Índices de tabela produtos
--
ALTER TABLE produtos
ADD PRIMARY KEY ( id_produtos ),
ADD KEY id_fornecedor ( id_fornecedor ),

ADD KEY id_categoria ( id_categoria ),
ADD KEY id_estoque ( id_estoque );
--
-- Índices de tabela relatorio_venda
--
ALTER TABLE relatorio_venda
ADD PRIMARY KEY ( id_relatoriovenda ),
ADD KEY id_venda ( id_venda );
--
-- Índices de tabela rua
--
ALTER TABLE rua
ADD PRIMARY KEY ( id_rua ),
ADD KEY id_bairro ( id_bairro );
--
-- Índices de tabela vendas
--
ALTER TABLE vendas
ADD PRIMARY KEY ( id_venda ),
ADD KEY id_funcionario ( id_funcionario ),
ADD KEY id_pedido ( id_pedido );
--
-- AUTO_INCREMENT para tabelas despejadas
--
--
-- AUTO_INCREMENT de tabela bairro
--
ALTER TABLE bairro
MODIFY id_bairro int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela categoria
--
ALTER TABLE categoria
MODIFY id_categoria int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela cidade
--
ALTER TABLE cidade
MODIFY id_cidades int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela clientes

--
ALTER TABLE clientes
MODIFY id_cliente int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela compras
--
ALTER TABLE compras
MODIFY id_compras int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de tabela endereco
--
ALTER TABLE endereco
MODIFY id_endereco int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela estado
--
ALTER TABLE estado
MODIFY id_estado int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela estoque
--
ALTER TABLE estoque
MODIFY id_estoque int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela fornecedores
--
ALTER TABLE fornecedores
MODIFY id_fornecedores int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de tabela funcionarios
--
ALTER TABLE funcionarios
MODIFY id_funcionario int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela itens_pedido
--
ALTER TABLE itens_pedido

MODIFY id_itenspedido int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de tabela pagamentos
--
ALTER TABLE pagamentos
MODIFY id_pagamento int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela pais
--
ALTER TABLE pais
MODIFY id_pais int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela pedidos
--
ALTER TABLE pedidos
MODIFY id_pedido int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de tabela produtos
--
ALTER TABLE produtos
MODIFY id_produtos int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT de tabela relatorio_venda
--
ALTER TABLE relatorio_venda
MODIFY id_relatoriovenda int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela rua
--
ALTER TABLE rua
MODIFY id_rua int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela vendas
--
ALTER TABLE vendas
MODIFY id_venda int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Restrições para tabelas despejadas

--
--
-- Restrições para tabelas bairro
--
ALTER TABLE bairro
ADD CONSTRAINT bairro_ibfk_1 FOREIGN KEY ( id_cidade ) REFERENCES
cidade ( id_cidades );
--
-- Restrições para tabelas cidade
--
ALTER TABLE cidade
ADD CONSTRAINT cidade_ibfk_1 FOREIGN KEY ( id_estado ) REFERENCES
estado ( id_estado );
--
-- Restrições para tabelas clientes
--
ALTER TABLE clientes
ADD CONSTRAINT clientes_ibfk_1 FOREIGN KEY ( id_endereco )
REFERENCES endereco ( id_endereco );
--
-- Restrições para tabelas compras
--
ALTER TABLE compras
ADD CONSTRAINT compras_ibfk_1 FOREIGN KEY ( id_fornecedor )
REFERENCES fornecedores ( id_fornecedores );
--
-- Restrições para tabelas endereco
--
ALTER TABLE endereco
ADD CONSTRAINT endereco_ibfk_1 FOREIGN KEY ( id_rua ) REFERENCES
rua ( id_rua );
--
-- Restrições para tabelas estado
--
ALTER TABLE estado
ADD CONSTRAINT estado_ibfk_1 FOREIGN KEY ( id_pais ) REFERENCES
pais ( id_pais );
--
-- Restrições para tabelas fornecedores
--
ALTER TABLE fornecedores
ADD CONSTRAINT fornecedores_ibfk_1 FOREIGN KEY ( id_endereco )
REFERENCES endereco ( id_endereco );

--
-- Restrições para tabelas funcionarios
--
ALTER TABLE funcionarios
ADD CONSTRAINT funcionarios_ibfk_1 FOREIGN KEY ( id_endereco )
REFERENCES endereco ( id_endereco );
--
-- Restrições para tabelas itens_pedido
--
ALTER TABLE itens_pedido
ADD CONSTRAINT itens_pedido_ibfk_1 FOREIGN KEY ( id_produto )
REFERENCES produtos ( id_produtos ),
ADD CONSTRAINT itens_pedido_ibfk_2 FOREIGN KEY ( id_produto )
REFERENCES produtos ( id_produtos );
--
-- Restrições para tabelas pedidos
--
ALTER TABLE pedidos
ADD CONSTRAINT pedidos_ibfk_1 FOREIGN KEY ( id_cliente ) REFERENCES
clientes ( id_cliente ),
ADD CONSTRAINT pedidos_ibfk_2 FOREIGN KEY ( id_pagamentos )
REFERENCES pagamentos ( id_pagamento ),
ADD CONSTRAINT pedidos_ibfk_3 FOREIGN KEY ( id_itenspedido )
REFERENCES itens_pedido ( id_itenspedido );
--
-- Restrições para tabelas produtos
--
ALTER TABLE produtos
ADD CONSTRAINT produtos_ibfk_1 FOREIGN KEY ( id_fornecedor )
REFERENCES fornecedores ( id_fornecedores ),
ADD CONSTRAINT produtos_ibfk_2 FOREIGN KEY ( id_categoria )
REFERENCES categoria ( id_categoria ),
ADD CONSTRAINT produtos_ibfk_3 FOREIGN KEY ( id_estoque )
REFERENCES estoque ( id_estoque );
--
-- Restrições para tabelas relatorio_venda
--
ALTER TABLE relatorio_venda
ADD CONSTRAINT relatorio_venda_ibfk_1 FOREIGN KEY ( id_venda )
REFERENCES vendas ( id_venda ),
ADD CONSTRAINT relatorio_venda_ibfk_2 FOREIGN KEY ( id_venda )
REFERENCES vendas ( id_venda );
--
-- Restrições para tabelas rua
--
ALTER TABLE rua

ADD CONSTRAINT rua_ibfk_1 FOREIGN KEY ( id_bairro ) REFERENCES
bairro ( id_bairro );
--
-- Restrições para tabelas vendas
--
ALTER TABLE vendas
ADD CONSTRAINT vendas_ibfk_1 FOREIGN KEY ( id_funcionario )
REFERENCES funcionarios ( id_funcionario ),
ADD CONSTRAINT vendas_ibfk_2 FOREIGN KEY ( id_pedido ) REFERENCES
pedidos ( id_pedido );
COMMIT;