USE EcommerceDB;

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
