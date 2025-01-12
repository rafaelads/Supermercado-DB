CREATE PROCEDURE ConsultarTodosProdutos
AS
BEGIN
    SELECT * FROM Produtos;
END;
GO


CREATE PROCEDURE ConsultarTodosClientes
AS
BEGIN
    SELECT * FROM Clientes;
END;
GO

CREATE PROCEDURE ConsultarTodasVendas
AS
BEGIN
    SELECT * FROM Vendas;
END;
GO

CREATE PROCEDURE ConsultarTodosFornecedores
AS
BEGIN
    SELECT * FROM Fornecedores;
END;
GO

CREATE PROCEDURE ConsultarTodasCompras
AS
BEGIN
    SELECT * FROM Compras;
END;
GO

CREATE PROCEDURE ConsultarProdutosBaixaQuantidade
AS
BEGIN
    SELECT * FROM Produtos
    WHERE Quantidade_em_Estoque < 20;
END;
GO

CREATE PROCEDURE ConsultarVendasPeriodo
    @DataInicio DATETIME,
    @DataFim DATETIME
AS
BEGIN
    SELECT * FROM Vendas
    WHERE Data BETWEEN @DataInicio AND @DataFim;
END;
GO

CREATE PROCEDURE ConsultarProdutosMaisVendidos
AS
BEGIN
    SELECT p.Nome, SUM(iv.Quantidade) AS Quantidade_Vendida
    FROM Itens_de_Venda iv
    JOIN Produtos p ON iv.Produto_ID = p.ID_Produto
    GROUP BY p.Nome
    ORDER BY Quantidade_Vendida DESC;
END;
GO

CREATE PROCEDURE ConsultarTotalVendasPorCliente
AS
BEGIN
    SELECT c.Nome, c.Sobrenome, SUM(v.Total_Venda) AS Total_Vendido
    FROM Vendas v
    JOIN Clientes c ON v.Cliente_ID = c.ID_Cliente
    GROUP BY c.Nome, c.Sobrenome;
END;
GO

CREATE PROCEDURE ConsultarTotalComprasPorFornecedor
AS
BEGIN
    SELECT f.Nome, SUM(c.Total_Compra) AS Total_Comprado
    FROM Compras c
    JOIN Fornecedores f ON c.Fornecedor_ID = f.ID_Fornecedor
    GROUP BY f.Nome;
END;
GO

CREATE PROCEDURE ConsultarLucroTotal
AS
BEGIN
    SELECT 
        (SELECT SUM(Total_Venda) FROM Vendas) - 
        (SELECT SUM(Total_Compra) FROM Compras) AS Lucro_Total;
END;
GO

CREATE PROCEDURE ConsultarHistoricoComprasCliente
    @ClienteID INT
AS
BEGIN
    SELECT v.ID_Venda, v.Data, iv.Produto_ID, p.Nome, iv.Quantidade, iv.Preco
    FROM Vendas v
    JOIN Itens_de_Venda iv ON v.ID_Venda = iv.Venda_ID
    JOIN Produtos p ON iv.Produto_ID = p.ID_Produto
    WHERE v.Cliente_ID = @ClienteID;
END;
GO

CREATE PROCEDURE ConsultarProdutosPorCategoria
    @CategoriaNome NVARCHAR(100)
AS
BEGIN
    SELECT p.*, c.Nome AS Categoria
    FROM Produtos p
    JOIN Categorias c ON p.Categoria_ID = c.ID_Categoria
    WHERE c.Nome = @CategoriaNome;
END;
GO

CREATE PROCEDURE ConsultarEstoqueAtual
AS
BEGIN
    SELECT Nome, Quantidade_em_Estoque
    FROM Produtos;
END;
GO

CREATE PROCEDURE ConsultarFornecedoresProduto
    @ProdutoID INT
AS
BEGIN
    SELECT f.Nome, f.Contato, f.Telefone, f.Email
    FROM Fornecedores f
    JOIN Compras c ON f.ID_Fornecedor = c.Fornecedor_ID
    JOIN Itens_de_Compra ic ON c.ID_Compra = ic.Compra_ID
    WHERE ic.Produto_ID = @ProdutoID;
END;
GO
