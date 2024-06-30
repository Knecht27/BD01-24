INSERT INTO Cliente (Id, Nome, Email) VALUES
(1, 'Tião Berranteiro', 'tiaob@yahoo.com'),
(2, 'Anastacia Souza', 'anastacias@eyahoo.com');


INSERT INTO Carro (Id, Placa, Marca, Modelo, Ano, ClienteId) VALUES
(1, 'ABC1234', 'Chevrolet', 'Chevette', 1989, 1),
(2, 'XYZ5678', 'Fiat', 'Uno', 1998, 2),
(3, 'DEF4321', 'Chevrollet', 'Calibra', 1995, 1);


INSERT INTO Servico (Id, DataAtendimento, DescricaoServico, CarroId) VALUES
(1, '2024-06-01', 'Revisão da elétrica', 1),
(2, '2024-06-10', 'Balanceamento e Alinhamento', 2),
(3, '2024-06-15', 'Forjamento do Câmbio', 3),
(4, '2024-06-20', 'Tentando por freio', 1),
(5, '2024-06-25', 'Troca feixe de mola', 2);