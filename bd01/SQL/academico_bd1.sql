CREATE DATABASE academico;

SHOW DATABASES;

USE academico;

CREATE TABLE Curso(
	cod_curso INT PRIMARY KEY,
	nome VARCHAR(30),
    siga VARCHAR(6)
);

CREATE TABLE Aluno(
	mat INT PRIMARY KEY,
    nome_aluno VARCHAR(30),
    entrada CHAR(10),
    cod_curso INT,
    FOREIGN KEY (cod_curso) REFERENCES Curso(cod_curso)
);

/*
DROP TABLE mat;
DROP DATABASE Aluno;
*/

CREATE TABLE Disciplina(
	cod_disc INT PRIMARY KEY,
    nome_disciplina VARCHAR(16),
    sigla CHAR(3),
    carga_horaria INT
);

CREATE TABLE Professor(
	cod_prof INT PRIMARY KEY,
    nome_professor VARCHAR(30)
);

CREATE TABLE Turma(
	cod_turma INT PRIMARY KEY,
    ano INT,
    semestre INT
);

CREATE TABLE Alocacao(
	cod_turma INT PRIMARY KEY,
    cod_disc INT,
    cod_professor INT
);

CREATE TABLE Historico(
	cod_turma INT PRIMARY KEY,
    mat INT,
    cod_disc INT,
    media FLOAT
);

CREATE TABLE PreReq(
	cod_disc INT PRIMARY KEY,
    cod_disc_req INT
);

/*
ALTER TABLE Aluno ADD data_nascimento DATE;
ALTER TABLE Aluno DROP COLUMN data_nascimento;
ALTER TABLE Aluno MODIFY COLUMN mat INT;
ALTER TABLE Aluno CHANGE COLUMN nome_do_aluno nome_aluno VARCHAR(30);
ALTER TABLE Aluno DROP PRIMARY KEY;
ALTER TABLE Aluno ADD PRIMARY KEY (mat);
*/

/*
INSERT INTO Curso(cod_curso, nome, sigla) VALUES(1,'Sistemas para internet', 'TSPI');
INSERT INTO Curso(cod_curso, nome, sigla) VALUES(2,'Licenciatura em computação', 'LCO');
*/

/*
INSERT INTO Curso(cod_curso, nome, sigla) VALUES(1,'Sistemas para internet', 'TSPI'), (2,'Licenciatura em computação', 'LCO');
*/

SELECT *
FROM Curso;
