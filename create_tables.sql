CREATE DATABASE Supermercado;
GO

USE Supermercado;
GO

CREATE TABLE Categorias (
    ID_Categoria INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL,
    Descricao NVARCHAR(255)
);
GO

CREATE TABLE Produtos (
    ID_Produto INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL,
    Descricao NVARCHAR(255),
    Preco DECIMAL(10, 2) NOT NULL,
    Quantidade_em_Estoque INT NOT NULL,
    Categoria_ID INT,
    FOREIGN KEY (Categoria_ID) REFERENCES Categorias(ID_Categoria)
);
GO

CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL,
    Sobrenome NVARCHAR(100) NOT NULL,
    Endereco NVARCHAR(255),
    Telefone NVARCHAR(20),
    Email NVARCHAR(100)
);
GO

CREATE TABLE Vendas (
    ID_Venda INT PRIMARY KEY IDENTITY(1,1),
    Data DATETIME NOT NULL,
    Cliente_ID INT,
    Total_Venda DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Cliente_ID) REFERENCES Clientes(ID_Cliente)
);
GO

CREATE TABLE Itens_de_Venda (
    ID_Item_Venda INT PRIMARY KEY IDENTITY(1,1),
    Venda_ID INT,
    Produto_ID INT,
    Quantidade INT NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Venda_ID) REFERENCES Vendas(ID_Venda),
    FOREIGN KEY (Produto_ID) REFERENCES Produtos(ID_Produto)
);
GO

CREATE TABLE Fornecedores (
    ID_Fornecedor INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL,
    Contato NVARCHAR(100),
    Telefone NVARCHAR(20),
    Email NVARCHAR(100)
);
GO

CREATE TABLE Compras (
    ID_Compra INT PRIMARY KEY IDENTITY(1,1),
    Data DATETIME NOT NULL,
    Fornecedor_ID INT,
    Total_Compra DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Fornecedor_ID) REFERENCES Fornecedores(ID_Fornecedor)
);
GO

CREATE TABLE Itens_de_Compra (
    ID_Item_Compra INT PRIMARY KEY IDENTITY(1,1),
    Compra_ID INT,
    Produto_ID INT,
    Quantidade INT NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Compra_ID) REFERENCES Compras(ID_Compra),
    FOREIGN KEY (Produto_ID) REFERENCES Produtos(ID_Produto)
);
GO
