CREATE DATABASE SIS2402;
USE SIS2402;

CREATE TABLE CLIENTES (
    Nome VARCHAR(255),
    Email VARCHAR(255),
    Data_de_nascimento DATE,
    Sexo_ou_genero CHAR(1),
    CEP CHAR(9),
    Rua VARCHAR(255),
    Numero INT,
    Bairro VARCHAR(255),
    Cidade VARCHAR(255),
    UF CHAR(2),
    Pais VARCHAR(255)
);