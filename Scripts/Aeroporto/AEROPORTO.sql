
CREATE SCHEMA AEROPORTO;
USE AEROPORTO;

CREATE TABLE Cidade (
    IdCidade INT AUTO_INCREMENT PRIMARY KEY,
    Cidade VARCHAR(80),
    Estado VARCHAR(80),
    Pais VARCHAR(45),
    Sigla VARCHAR(2)
);

CREATE TABLE Aeroporto (
    IdAeroporto INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(80),
    Cidade INT,
    CNPJ CHAR(14),
    Sigla VARCHAR(3),
    FOREIGN KEY (cidade) REFERENCES cidade(idCidade)
);

CREATE TABLE ModeloAeronave (
    IdModelo INT AUTO_INCREMENT PRIMARY KEY,
    NomeModelo VARCHAR(80),
    AnoModelo YEAR,
    CapacidadePoltronas INT,
    CapacidadeCombustivel INT
);

CREATE TABLE Pilotos (
    IdPiloto INT AUTO_INCREMENT PRIMARY KEY,
    NomePiloto VARCHAR(80),
    CPF CHAR(50),
    Nascimento DATE,
    NumCertificacao INT
);

CREATE TABLE Aeronave (
    IdAeronave INT AUTO_INCREMENT PRIMARY KEY,
    NomeAeronave VARCHAR(120),
    Ativo TINYINT,
    ModeloAeronave INT,
    Piloto INT,
    FOREIGN KEY (ModeloAeronave) REFERENCES ModeloAeronave(IdModelo),
    FOREIGN KEY (Piloto) REFERENCES Pilotos(IdPiloto)
);

CREATE TABLE Cliente (
    IdCliente INT AUTO_INCREMENT PRIMARY KEY,
    NomeCliente VARCHAR(80),
    DataNascimento DATE,
    Passagem VARCHAR(45),
    Sexo ENUM('M', 'F'),
    CPF VARCHAR(45)
);

CREATE TABLE Poltrona (
    IdPoltrona INT AUTO_INCREMENT PRIMARY KEY,
    NumPoltrona VARCHAR(4),
    Ocupado TINYINT
);

CREATE TABLE Voo (
    IdVoo INT AUTO_INCREMENT PRIMARY KEY,
    Partida INT,
    Destino INT,
    PrevistoDecolagem DATETIME,
    PrevistoPouso DATETIME,
    TempoDecolagem DATETIME,
    TempoPouso DATETIME,
    Aeronave INT,
    FOREIGN KEY (Partida) REFERENCES Aeroporto(IdAeroporto),
    FOREIGN KEY (Destino) REFERENCES Aeroporto(IdAeroporto),
    FOREIGN KEY (Aeronave) REFERENCES Aeronave(IdAeronave)
);

CREATE TABLE Passagem (
    IdPassagem INT AUTO_INCREMENT PRIMARY KEY,
    NumeroPassagem INT,
    ClientePassagem INT,
    VooNum INT,
    Poltrona INT,
    AeroportoDecolagem INT,
    AeroportoPouso INT,
    FOREIGN KEY (ClientePassagem) REFERENCES Cliente(IdCliente),
    FOREIGN KEY (VooNum) REFERENCES Voo(IdVoo),
    FOREIGN KEY (Poltrona) REFERENCES Poltrona(IdPoltrona),
    FOREIGN KEY (AeroportoPartida) REFERENCES Aeroporto(IdAeroporto),
    FOREIGN KEY (AeroportoDestino) REFERENCES Aeroporto(IdAeroporto)
);
