USE bdrestaurante;


INSERT INTO cliente (cpf, nome, dataNascimento, email, telefone) VALUES
('12345678901', 'Ana Souza',      '1998-05-10', 'ana.souza@email.com',      '11999991111'),
('23456789012', 'Bruno Lima',     '1995-11-23', 'bruno.lima@email.com',     '11988882222'),
('34567890123', 'Carla Mendes',   '2001-02-14', 'carla.mendes@email.com',   '11977773333'),
('45678901234', 'Diego Ferreira', '1989-07-30', 'diego.ferreira@email.com', '11966664444'),
('56789012345', 'Eduarda Costa',  '1999-09-05', 'eduarda.costa@email.com',  '11955555555');

INSERT INTO formaPagamento (forma) VALUES
('Pix'),
('Cartão de crédito'),
('Dinheiro');

INSERT INTO garcom (nome, horarioTrabalho) VALUES
('Carlos',   '18h às 00h'),
('Fernanda', '11h às 17h'),
('Marcos',   '12h às 20h');

INSERT INTO categoria (nome) VALUES
('Bebidas'),
('Pratos principais'),
('Sobremesas');

INSERT INTO cardapio (nome, preco, unidade, codigoCategoria) VALUES
('Refrigerante',        6.00, 'un',     1),
('Suco natural',        9.50, 'un',     1),
('Parmegiana',         42.00, 'porção', 2),
('Risoto de cogumelos',48.00, 'porção', 2),
('Pudim',              14.00, 'fatia',  3),
('Brownie com sorvete',18.00, 'un',     3);

INSERT INTO pedido (data, valorTotal, numeroPessoas, codigoCliente, codigoPagamento) VALUES
('2026-11-01 19:30:00',  54.00, 2, 1, 1),
('2026-11-03 20:15:00', 129.00, 2, 2, 2),
('2026-11-07 13:00:00',  48.00, 1, 3, 3),
('2026-11-08 21:00:00',  36.00, 2, 4, 1),
('2026-11-09 12:45:00',  76.50, 3, 5, 2);

INSERT INTO itemPedido (quantidade, valorUnitario, valorTotalItem, numeroVenda, codigoGarcom, codigoCardapio) VALUES
-- Pedido 1
(2,  6.00, 12.00, 1, 1, 1),
(1, 42.00, 42.00, 1, 1, 3),
-- Pedido 2
(2,  9.50, 19.00, 2, 2, 2),
(2, 48.00, 96.00, 2, 2, 4),
(1, 14.00, 14.00, 2, 2, 5),
-- Pedido 3
(1,  6.00,  6.00, 3, 3, 1),
(1, 42.00, 42.00, 3, 3, 3),
-- Pedido 4
(2, 18.00, 36.00, 4, 1, 6),
-- Pedido 5
(3,  9.50, 28.50, 5, 2, 2),
(1, 48.00, 48.00, 5, 2, 4);


