CREATE DATABASE empresa;

USE empresa;

CREATE TABLE Cargo(
	cod_cargo INT PRIMARY KEY,
    nome VARCHAR(30),
    nivel CHAR(8),
    salario VARCHAR(16)
);

CREATE TABLE Departamento(
	cod_depto INT PRIMARY KEY,
    nome VARCHAR(30),
    sigla CHAR(4)
);

CREATE TABLE Funcionario(
	cod_func INT PRIMARY KEY,
    nome_funcionario VARCHAR(30),
    data_adm DATE,
    sexo CHAR(1),
    cod_cargo INT,
    cod_depto INT,    
    FOREIGN KEY (cod_cargo) REFERENCES Cargo(cod_cargo),
    FOREIGN KEY (cod_depto) REFERENCES Departamento(cod_depto)   
);

INSERT INTO Cargo(cod_cargo, nome, nivel, salario)
VALUES(1,'Analista de Sistemas', 'JR', 1500),
	  (2,'Desenvolvedor', 'JR', 1500),
	  (3,'Analista de Sistemas', 'JR', 1500),
	  (4,'Analista de Sistemas', 'JR', 1500),
	  (5,'Analista de Sistemas', 'JR', 1500),;