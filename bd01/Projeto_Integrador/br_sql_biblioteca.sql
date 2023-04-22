CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE Usuario(
	idUsuario INT PRIMARY KEY,
    nome VARCHAR(30),
    email VARCHAR(30),
    cpf INT,
    endereco VARCHAR(30),
    telefone INT
);

CREATE TABLE Aluno(
	matricula INT,
    curso VARCHAR(20),
    FOREIGN KEY(matricula) REFERENCES Usuatio(idUsuario)
);

CREATE TABLE Bibliotecaria(
	turno VARCHAR(10)
);

CREATE TABLE Professor(
	titulacao VARCHAR(10),
    especializacao VARCHAR(20)
);

CREATE TABLE Livro(
	cod_livro INT PRIMARY KEY,
    nota_cont VARCHAR(100),
    quantidadeTotal INT,
    assunto VARCHAR(30),
	titulo VARCHAR(30),
    autoria VARCHAR(20),
    editora VARCHAR(20),
    idioma VARCHAR(10),
    ISBN INT,
    publicacao DATE
);

CREATE TABLE Emprestimo(
	idEmprestimo INT PRIMARY KEY,
    dataEmprestimo DATE,
    dataPrevRetorno DATE,
    idObra INT,
    dataDevolucao DATE,
    idFuncionario INT,
    statusDevolucao BOOLEAN,
    FOREIGN KEY(idFuncionario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY(idObra) REFERENCES Livro(cod_livro)
);

CREATE TABLE Multa(
	idMulta INT PRIMARY KEY,
	dataMulta DATE,
    motivoMulta VARCHAR(20),
    valorMulta FLOAT,
    idEmprestimo INT,
    idAluno INT,
    FOREIGN KEY(idEmprestimo) REFERENCES Emprestimo(idEmprestimo),
    FOREIGN KEY(idAluno) REFERENCES Aluno(matricula)
);

CREATE TABLE Requisicao(
	idRequisicao INT PRIMARY KEY,
    dataAbertura DATE,
    estadoRequisicao VARCHAR(10)
);

INSERT INTO Usuario(idUsuario, nome, email, cpf, endereco, telefone)
VALUES(1,'', '', '', , '', ),
	  (2,'', '', '', , '', );

INSERT INTO Aluno(matricula, curso)
VALUES(1,'', ''),
	  (2,'', '');

INSERT INTO Professor(titulacao, especializacao)
VALUES(1,'',''),
	  (2,'','');
      
INSERT INTO Livro(cod_livro, nota_cont, quantidadeTotal, assunto, titulo, autoria, editora, idioma, ISBN, publicacao)
VALUES(1,'', ,'','','','','', , yyyy-mm-ddd),
	  (2,'', ,'','','','','', , yyyy-mm-ddd);

