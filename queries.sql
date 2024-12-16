USE EcommerceDB;

-- Recuperações simples com SELECT Statement
-- Recuperar todos os clientes
SELECT * FROM Clientes;

-- Recuperar todos os produtos
SELECT * FROM Produtos;

-- Filtros com WHERE Statement
-- Recuperar pedidos pendentes
SELECT * FROM Pedidos WHERE Status = 'Pendente';

-- Criar expressões para gerar atributos derivados
-- Calcular o valor total dos itens de um pedido
SELECT PedidoID, SUM(Quantidade * PrecoUnitario) AS ValorTotal FROM ItensPedido GROUP BY PedidoID;

-- Defina ordenações dos dados com ORDER BY
-- Ordenar produtos pelo preço
SELECT * FROM Produtos ORDER BY Preco DESC;

-- Condições de filtros aos grupos – HAVING Statement
-- Pedidos com valor total acima de 500
SELECT PedidoID, SUM(Quantidade * PrecoUnitario) AS ValorTotal
FROM ItensPedido
GROUP BY PedidoID
HAVING ValorTotal > 500;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
-- Relação de produtos e seus fornecedores
-- (Assumindo que a tabela de fornecedores exista e tenha sido relacionada com produtos)
-- SELECT Produtos.Nome AS Produto, Fornecedores.Nome AS Fornecedor
-- FROM Produtos
-- JOIN Fornecedores ON Produtos.FornecedorID = Fornecedores.FornecedorID;

-- Quantos pedidos foram feitos por cada cliente
SELECT Clientes.Nome, COUNT(Pedidos.PedidoID) AS TotalPedidos
FROM Clientes
JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID
GROUP BY Clientes.Nome;

-- Algum vendedor também é fornecedor?
-- (Assumindo que a tabela de vendedores e fornecedores existam e tenham um campo de email para comparação)
-- SELECT Vendedores.Nome
-- FROM Vendedores
-- JOIN Fornecedores ON Vendedores.Email = Fornecedores.Email;
