USE ECommerce

--DML(Linguagem de manipulação de dados) - Inserir, alterar ou deletar dados

-- INSERT INTO: inserir dados
INSERT INTO Produto (Nome, Descricao, Preco, EstoqueDisponivel, CategoiaProduto, Imagem)
VALUES 
('Mouse', 'Mouse Logitech', 99.90, 50, 'Informática', ''),
('Teclado', 'Teclado Dell', 209.50, 100, 'Informática', '')

INSERT INTO Cliente (NomeCompleto, Email, Telefone, Endereco, DataCadastro)
VALUES
('Renan Coelho', 'renan@senai.com.br', '11 999997777', 'Rua Um, n 460', '06/06/2020'),
('Isabela', 'isabela@senai.com.br', '11 999987744', 'Rua Dois, n 5', '09/10/2022')

INSERT INTO Pedido (IdCliente, DataPedido, Status, ValorTotal)
VALUES 
(2, '05/02/2025', 'Concluído', 309.40), 
(3, '02/04/2025', 'Processando', 618.80)

INSERT INTO Pagamento (IdPedido, FormaPagamento, Status, Data)
VALUES
(2, 'Pix', 'Concluído', '07/02/2025'),
(3, 'Cartão de crédito', 'Aguardando', '05/04/2025')

INSERT INTO ItemPedido (IdPedido, IdProduto, Quantidade)
VALUES
(2, 2, 1),
(3, 3, 2)

--Comando para deletar dados de tabelas:
--DELETE FROM Produto WHERE IdProduto = 4

--DQL - Comando de consulta dos dados
-- SELECT 

SELECT * FROM Pagamento






