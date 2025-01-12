
CREATE VIEW vw_TodosProdutos AS
SELECT * FROM Produtos;
GO

CREATE VIEW vw_TodosClientes AS
SELECT * FROM Clientes;
GO

CREATE VIEW vw_TodasVendas AS
SELECT * FROM Vendas;
GO


CREATE VIEW vw_TodosFornecedores AS
SELECT * FROM Fornecedores;
GO

CREATE VIEW vw_TodasCompras AS
SELECT * FROM Compras;
GO

CREATE VIEW vw_ProdutosBaixaQuantidade AS
SELECT * FROM Produtos
WHERE Quantidade_em_Estoque < 20;
GO

CREATE VIEW vw_VendasPeriodo AS
SELECT * FROM Vendas
WHERE Data BETWEEN '2025-01-01' AND '2025-01-31';
GO

CREATE VIEW vw_ProdutosMaisVendidos AS
SELECT p.Nome, SUM(iv.Quantidade) AS Quantidade_Vendida
FROM Itens_de_Venda iv
JOIN Produtos p ON iv.Produto_ID = p.ID_Produto
GROUP BY p.Nome
ORDER BY Quantidade_Vendida DESC;
GO

CREATE VIEW vw_TotalVendasPorCliente AS
SELECT c.Nome, c.Sobrenome, SUM(v.Total_Venda) AS Total_Vendido
FROM Vendas v
JOIN Clientes c ON v.Cliente_ID = c.ID_Cliente
GROUP BY c.Nome, c.Sobrenome;
GO

CREATE VIEW vw_TotalComprasPorFornecedor AS
SELECT f.Nome, SUM(c.Total_Compra) AS Total_Comprado
FROM Compras c
JOIN Fornecedores f ON c.Fornecedor_ID = f.ID_Fornecedor
GROUP BY f.Nome;
GO

CREATE VIEW vw_LucroTotal AS
SELECT 
    (SELECT SUM(Total_Venda) FROM Vendas) - 
    (SELECT SUM(Total_Compra) FROM Compras) AS Lucro_Total;
GO

CREATE VIEW vw_HistoricoComprasCliente AS
SELECT v.ID_Venda, v.Data, iv.Produto_ID, p.Nome, iv.Quantidade, iv.Preco
FROM Vendas v
JOIN Itens_de_Venda iv ON v.ID_Venda = iv.Venda_ID
JOIN Produtos p ON iv.Produto_ID = p.ID_Produto;
GO

CREATE VIEW vw_ProdutosPorCategoria AS
SELECT p.*, c.Nome AS Categoria
FROM Produtos p
JOIN Categorias c ON p.Categoria_ID = c.ID_Categoria;
GO

CREATE VIEW vw_EstoqueAtual AS
SELECT Nome, Quantidade_em_Estoque
FROM Produtos;
GO

CREATE VIEW vw_FornecedoresProduto AS
SELECT f.Nome, f.Contato, f.Telefone, f.Email
FROM Fornecedores f
JOIN Compras c ON f.ID_Fornecedor = c.Fornecedor_ID
JOIN Itens_de_Compra ic ON c.ID_Compra = ic.Compra_ID;
GO
