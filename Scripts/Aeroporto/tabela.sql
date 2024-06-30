-- Cidade
INSERT INTO Cidade (Cidade, Estado, Pais, Sigla) VALUES 
('São Paulo', 'SP', 'Brasil', 'SP'),
('Rio de Janeiro', 'RJ', 'Brasil', 'RJ'),
('Brasília', 'DF', 'Brasil', 'DF'),
('Belo Horizonte', 'MG', 'Brasil', 'MG');

-- Aeroporto
INSERT INTO Aeroporto (Nome, Cidade, CNPJ, Sigla) VALUES 
('Aeroporto Internacional de São Paulo', 1, '12345678000123', 'GRU'),
('Aeroporto Santos Dumont', 2, '12345678000124', 'SDU'),
('Aeroporto Internacional de Brasília', 3, '12345678000125', 'BSB'),
('Aeroporto de Confins', 4, '12345678000126', 'CNF');

-- Modelo Aeronave
INSERT INTO ModeloAeronave (NomeModelo, AnoModelo, CapacidadePoltronas, CapacidadeCombustivel) VALUES 
('Ju 87 R-2', 2018, 2, 26000),
('Airbus A320', 2019, 180, 24200),
('Embraer E190', 2020, 114, 13000),
('Boeing 777', 2017, 396, 181283);

-- Pilotos
INSERT INTO Pilotos (NomePiloto, CPF, Nascimento, NumCertificacao) VALUES 
('Manuel Antônio', '12345678901', '1980-05-10', 1001),
('Kailson Mendes', '12345678902', '1985-08-15', 1002),
('Jacinto Perreria', '12345678903', '1975-12-20', 1003),
('Margarete Santore', '12345678904', '1990-03-25', 1004);

-- Aeronave
INSERT INTO Aeronave (NomeAeronave, Ativo, ModeloAeronave, Piloto) VALUES 
('Aeronave 1', 1, 1, 1),
('Aeronave 2', 1, 2, 2),
('Aeronave 3', 1, 3, 3),
('Aeronave 4', 1, 4, 4);

-- Cliente
INSERT INTO Cliente (NomeCliente, DataNascimento, Passagem, Sexo, CPF) VALUES 
('Roberto Carlos', '1985-01-10', 'P12345', 'M', '12345678910'),
('Maria Antonieta', '1990-02-20', 'P12346', 'F', '12345678911'),
('Pedro Pedroso', '1980-03-30', 'P12347', 'M', '12345678912'),
('Ana Banana', '1995-04-25', 'P12348', 'F', '12345678913');

-- Poltrona
INSERT INTO Poltrona (NumPoltrona, Ocupado) VALUES 
('1A', 0),
('1B', 0),
('2A', 1),
('2B', 1),
('3A', 0),
('3B', 0);

-- VOO
INSERT INTO Voo (Decolagem, Destino, PrevistoDecolagem, PrevistoPouso, TempoDecolagem, TempoPouso, Aeronave) VALUES 
(1, 2, '2023-06-01 08:00:00', '2023-06-01 10:00:00', '2023-06-01 08:00:00', '2023-06-01 10:00:00', 1),
(2, 3, '2023-06-02 09:00:00', '2023-06-02 11:00:00', '2023-06-02 09:00:00', '2023-06-02 11:00:00', 2),
(3, 4, '2023-06-03 10:00:00', '2023-06-03 12:00:00', '2023-06-03 10:00:00', '2023-06-03 12:00:00', 3),
(4, 1, '2023-06-04 11:00:00', '2023-06-04 13:00:00', '2023-06-04 11:00:00', '2023-06-04 13:00:00', 4);

-- Passagem
INSERT INTO Passagem (NumeroPassagem, ClientePassagem, VooNum, Poltrona, AeroportoDecolagem, AeroportoDestino) VALUES 
(12345, 1, 1, 1, 1, 2),
(12346, 2, 2, 2, 2, 3),
(12347, 3, 3, 3, 3, 4),
(12348, 4, 4, 4, 4, 1);