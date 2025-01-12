INSERT INTO Categorias (Nome, Descricao) VALUES ('Bebidas', 'Bebidas alcoólicas e Refrigerantes');
INSERT INTO Categorias (Nome, Descricao) VALUES ('Laticínios', 'Produtos de leite e derivados');
INSERT INTO Categorias (Nome, Descricao) VALUES ('Alimentos', 'Produtos alimentícios diversos');
INSERT INTO Categorias (Nome, Descricao) VALUES ('Higiene', 'Produtos de higiene pessoal');
INSERT INTO Categorias (Nome, Descricao) VALUES ('Limpeza', 'Produtos de limpeza e manutenção');
INSERT INTO Categorias (Nome, Descricao) VALUES ('Frios', 'Carnes, frios e embutidos');
INSERT INTO Categorias (Nome, Descricao) VALUES ('Padaria', 'Produtos de padaria e confeitaria');
INSERT INTO Categorias (Nome, Descricao) VALUES ('Bazar', 'Produtos diversos e utensílios');

INSERT INTO Produtos (Nome, Descricao, Preco, Quantidade_em_Estoque, Categoria_ID) VALUES ('Coca-Cola', 'Refrigerante de cola', 6.50, 100, 1);
INSERT INTO Produtos (Nome, Descricao, Preco, Quantidade_em_Estoque, Categoria_ID) VALUES ('Queijo Mussarela', 'Queijo de mussarela', 20.00, 50, 2);
INSERT INTO Produtos (Nome, Descricao, Preco, Quantidade_em_Estoque, Categoria_ID) VALUES ('Arroz', 'Arroz branco', 12.00, 200, 3);
INSERT INTO Produtos (Nome, Descricao, Preco, Quantidade_em_Estoque, Categoria_ID) VALUES ('Shampoo', 'Shampoo para cabelos', 15.00, 80, 4);
INSERT INTO Produtos (Nome, Descricao, Preco, Quantidade_em_Estoque, Categoria_ID) VALUES ('Detergente', 'Detergente para louças', 5.00, 60, 5);
INSERT INTO Produtos (Nome, Descricao, Preco, Quantidade_em_Estoque, Categoria_ID) VALUES ('Presunto', 'Presunto fatiado', 25.00, 40, 6);
INSERT INTO Produtos (Nome, Descricao, Preco, Quantidade_em_Estoque, Categoria_ID) VALUES ('Pão Francês', 'Pão francês fresco', 0.50, 500, 7);
INSERT INTO Produtos (Nome, Descricao, Preco, Quantidade_em_Estoque, Categoria_ID) VALUES ('Vassoura', 'Vassoura de piaçava', 10.00, 30, 8);

INSERT INTO Clientes (Nome, Sobrenome, Endereco, Telefone, Email) VALUES ('João', 'Silva', 'Rua A, 123', '555-1234', 'joao.silva@example.com');
INSERT INTO Clientes (Nome, Sobrenome, Endereco, Telefone, Email) VALUES ('Maria', 'Santos', 'Rua B, 456', '555-5678', 'maria.santos@example.com');
INSERT INTO Clientes (Nome, Sobrenome, Endereco, Telefone, Email) VALUES ('Pedro', 'Lima', 'Rua C, 789', '555-9101', 'pedro.lima@example.com');
INSERT INTO Clientes (Nome, Sobrenome, Endereco, Telefone, Email) VALUES ('Ana', 'Oliveira', 'Rua D, 321', '555-2345', 'ana.oliveira@example.com');

INSERT INTO Fornecedores (Nome, Contato, Telefone, Email) VALUES ('Distribuidora Bebidas SA', 'Carlos Oliveira', '555-8765', 'carlos.oliveira@bebidas.com');
INSERT INTO Fornecedores (Nome, Contato, Telefone, Email) VALUES ('Laticínios Boa Vista', 'Ana Souza', '555-4321', 'ana.souza@laticinios.com');
INSERT INTO Fornecedores (Nome, Contato, Telefone, Email) VALUES ('Arroz Alimentos Ltda', 'Marcos Pinto', '555-3456', 'marcos.pinto@arrozalimentos.com');
INSERT INTO Fornecedores (Nome, Contato, Telefone, Email) VALUES ('Higiene e Beleza SA', 'Fernanda Ribeiro', '555-6543', 'fernanda.ribeiro@higiene.com');

INSERT INTO Vendas (Data, Cliente_ID, Total_Venda) VALUES ('2025-01-12', 1, 50.00);
INSERT INTO Vendas (Data, Cliente_ID, Total_Venda) VALUES ('2025-01-13', 2, 30.00);
INSERT INTO Vendas (Data, Cliente_ID, Total_Venda) VALUES ('2025-01-14', 3, 70.00);
INSERT INTO Vendas (Data, Cliente_ID, Total_Venda) VALUES ('2025-01-15', 4, 25.00);

INSERT INTO Itens_de_Venda (Venda_ID, Produto_ID, Quantidade, Preco) VALUES (1, 1, 2, 6.50);
INSERT INTO Itens_de_Venda (Venda_ID, Produto_ID, Quantidade, Preco) VALUES (1, 2, 1, 20.00);
INSERT INTO Itens_de_Venda (Venda_ID, Produto_ID, Quantidade, Preco) VALUES (2, 3, 3, 12.00);
INSERT INTO Itens_de_Venda (Venda_ID, Produto_ID, Quantidade, Preco) VALUES (3, 4, 2, 15.00);
INSERT INTO Itens_de_Venda (Venda_ID, Produto_ID, Quantidade, Preco) VALUES (3, 5, 1, 5.00);
INSERT INTO Itens_de_Venda (Venda_ID, Produto_ID, Quantidade, Preco) VALUES (4, 6, 1, 25.00);

INSERT INTO Compras (Data, Fornecedor_ID, Total_Compra) VALUES ('2025-01-10', 1, 100.00);
INSERT INTO Compras (Data, Fornecedor_ID, Total_Compra) VALUES ('2025-01-11', 2, 200.00);
INSERT INTO Compras (Data, Fornecedor_ID, Total_Compra) VALUES ('2025-01-12', 3, 150.00);
INSERT INTO Compras (Data, Fornecedor_ID, Total_Compra) VALUES ('2025-01-13', 4, 120.00);

INSERT INTO Itens_de_Compra (Compra_ID, Produto_ID, Quantidade, Preco) VALUES (1, 1, 50, 6.00);
INSERT INTO Itens_de_Compra (Compra_ID, Produto_ID, Quantidade, Preco) VALUES (2, 2, 30, 18.00);
INSERT INTO Itens_de_Compra (Compra_ID, Produto_ID, Quantidade, Preco) VALUES (3, 3, 100, 11.00);
INSERT INTO Itens_de_Compra (Compra_ID, Produto_ID, Quantidade, Preco) VALUES (4, 4, 80, 14.00);
