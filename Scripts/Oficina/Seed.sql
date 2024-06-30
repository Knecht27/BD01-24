
CREATE SCHEMA IF NOT EXISTS OFICINA;
USE OFICINA;


CREATE TABLE Cliente (
    Id INT PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(50)
);

CREATE TABLE Carro (
    Id INT PRIMARY KEY,
    Placa VARCHAR(8),
    Marca VARCHAR(15),
    Modelo VARCHAR(20),
    Ano INT,
    ClienteId INT,
    FOREIGN KEY (ClienteId) REFERENCES Cliente(Id)
);

CREATE TABLE Servico (
    Id INT PRIMARY KEY,
    DataAtendimento DATE,
    DescricaoServico VARCHAR(255),
    CarroId INT,
    FOREIGN KEY (CarroId) REFERENCES Carro(Id)
);
