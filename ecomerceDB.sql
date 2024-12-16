-- Criar o banco de dados
CREATE DATABASE EcommerceDB;
USE EcommerceDB;

-- Criar a tabela de Clientes
CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Telefone VARCHAR(15),
    Endereco VARCHAR(255),
    Cidade VARCHAR(100),
    Estado VARCHAR(50),
    CEP VARCHAR(10)
);

-- Criar a tabela de Produtos
CREATE TABLE Produtos (
    ProdutoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT NOT NULL
);

-- Criar a tabela de Pedidos
CREATE TABLE Pedidos (
    PedidoID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE NOT NULL,
    Status VARCHAR(50),
    Total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Criar a tabela de ItensPedido
CREATE TABLE ItensPedido (
    ItemPedidoID INT AUTO_INCREMENT PRIMARY KEY,
    PedidoID INT,
    ProdutoID INT,
    Quantidade INT NOT NULL,
    PrecoUnitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);

-- Inserir alguns dados iniciais na tabela de Clientes
INSERT INTO Clientes (Nome, Email, Telefone, Endereco, Cidade, Estado, CEP)
VALUES
('João Silva', 'joao.silva@example.com', '21987654321', 'Rua A, 123', 'Rio de Janeiro', 'RJ', '12345-678'),
('Maria Oliveira', 'maria.oliveira@example.com', '21987654322', 'Rua B, 456', 'São Paulo', 'SP', '23456-789');

-- Inserir alguns dados iniciais na tabela de Produtos
INSERT INTO Produtos (Nome, Descricao, Preco, Estoque)
VALUES
('Produto 1', 'Descrição do Produto 1', 100.00, 50),
('Produto 2', 'Descrição do Produto 2', 200.00, 30);

-- Inserir alguns dados iniciais na tabela de Pedidos
INSERT INTO Pedidos (ClienteID, DataPedido, Status, Total)
VALUES
(1, '2024-12-15', 'Pendente', 300.00),
(2, '2024-12-16', 'Concluído', 200.00);

-- Inserir alguns dados iniciais na tabela de ItensPedido
INSERT INTO ItensPedido (PedidoID, ProdutoID, Quantidade, PrecoUnitario)
VALUES
(1, 1, 2, 100.00),
(1, 2, 1, 200.00),
(2, 2, 1, 200.00);
