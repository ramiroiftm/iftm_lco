CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE Usuario(
	idUsuario INT PRIMARY KEY,
    nome VARCHAR(30),
    email VARCHAR(60),
    cpf VARCHAR(11),
    endereco VARCHAR(50),
    telefone VARCHAR(11)
);

CREATE TABLE Aluno(
	matricula INT,
    curso VARCHAR(30),
    FOREIGN KEY(matricula) REFERENCES Usuario(idUsuario)
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
VALUES(1,'Ana Maria Silva','anamariasilva@iftm.edu.br','94622834865','Rua das Flores, 40, Pampulha, Uberlândia, MG',34957239486),
      (2,'Pedro Henrique Silva','pedrohenriquesilva@iftm.edu.br','20107020922','Rua 8 , 1450,Centro, Uberlândia, MG',62963152879),
      (3,'José Batista Ferreira','josébatistaferreira@iftm.edu.br','70519482180','Rua 50, 5026, Lídice, Uberlândia, MG',32658412987),
      (4,'Maria Aparecida Pereira','mariaaparecidapereira@iftm.edu.br','31735755638','Rua Vitória, 1250, Jardim Holanda, Uberlândia, MG',34687123698),
      (5,'Maia Angélica Soares','maiaangélicasoares@iftm.edu.br','41740882775','Rua Harpia, 70, Grand Ville, Uberlândia, MG',34689452684),
      (6,'Leticia Pereira','leticiapereira@iftm.edu.br','15525191888','Av Central, 856, Umuarama, Uberlândia, MG',11684921489),
      (7,'Rogério Lucas Santos','rogériolucassantos@iftm.edu.br','26809880728','Av Getúlio Vargas, 146, Martins, Uberlândia, MG',11357964528),
      (8,'Roberto Amado Silva','robertoamadosilva@iftm.edu.br','60075419465','Rua da Flores, 60, Pampulha, Uberlândia, MG',34568941369),
      (9,'Franciele Oliveira Souza','francieleoliveirasouza@iftm.edu.br','61985489728','Av 31, 1030, Planalto, Uberlândia, MG',32697259349),
      (10,'Adriana Martins Alves','adrianamartinsalves@iftm.edu.br','95661644848','Av 27, 7060, Centro, Uberlândia, MG',31654893169);

INSERT INTO Aluno(matricula, curso)
VALUES(1,'Ciência da Computação'),
      (2,'Ciência da Computação'),
      (3,'Ciência da Computação'),
      (4,'Ciência da Computação'),
      (5,'Sistemas para Internet'),
      (6,'Sistemas para Internet');

INSERT INTO Professor(titulacao, especializacao)
VALUES(9,'Bacharel em Ciência da Computação','Doutorado'),
	  (10,'Tecnólogo em Sistemas para Internet','Mestrado');

      
INSERT INTO Livro(cod_livro, nota_cont, quantidadeTotal, assunto, titulo, autoria, editora, idioma, ISBN, publicacao)
VALUES(1,'', ,'','','','','', , yyyy-mm-ddd),
	  (2,'', ,'','','','','', , yyyy-mm-ddd);

INSERT INTO Emprestimo(idEmprestimo, dataEmprestimo, dataPrevRetorno, idObra, dataDevolucao, idFuncionario, statusDevolucao)
VALUES(1,yyyy-mm-dd, yyyy-mm-dd, , yyyy-mm-dd, , t/f),
	  (1,yyyy-mm-dd, yyyy-mm-dd, , yyyy-mm-dd, , t/f),
      (1,yyyy-mm-dd, yyyy-mm-dd, , yyyy-mm-dd, , t/f),
 
INSERT INTO Multa(idMulta, dataMulta, motivoMulta, valorMulta, idEmprestimo, idAluno)
VALUES(1,yyyy-mm-dd, '', float , , ),
	  (1,yyyy-mm-dd, '', float , , ),
      (1,yyyy-mm-dd, '', float , , ),

INSERT INTO Requisicao(idRequisicao, dataAbertura, estadoRequisicao)
VALUES(1,yyyy-mm-dd, ''),
	  (1,yyyy-mm-dd, ''),
      (1,yyyy-mm-dd, ''),