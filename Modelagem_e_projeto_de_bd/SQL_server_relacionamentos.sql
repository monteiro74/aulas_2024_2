-- Cria��o do Banco de Dados
CREATE DATABASE EscolaDB;
GO

-- Uso do Banco de Dados
USE EscolaDB;
GO

-- Tabela de Alunos
CREATE TABLE Alunos (
    ID_Aluno INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    Data_Nascimento DATE NOT NULL,
    Sexo CHAR(1) CHECK (Sexo IN ('M', 'F')),
    Telefone NVARCHAR(15)
);
GO

-- Tabela de Cursos
CREATE TABLE Cursos (
    ID_Curso INT IDENTITY(1,1) PRIMARY KEY,
    Nome_Curso NVARCHAR(100) NOT NULL,
    Duracao_Meses INT NOT NULL,
    Valor DECIMAL(10,2) NOT NULL
);
GO

-- Tabela de Professores
CREATE TABLE Professores (
    ID_Professor INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    Especialidade NVARCHAR(100) NOT NULL,
    Telefone NVARCHAR(15)
);
GO

-- Tabela de Turmas
CREATE TABLE Turmas (
    ID_Turma INT IDENTITY(1,1) PRIMARY KEY,
    ID_Curso INT NOT NULL,
    ID_Professor INT NOT NULL,
    Ano INT NOT NULL,
    Semestre INT NOT NULL,
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso),
    FOREIGN KEY (ID_Professor) REFERENCES Professores(ID_Professor)
);
GO

-- Tabela de Matr�culas
CREATE TABLE Matriculas (
    ID_Matricula INT IDENTITY(1,1) PRIMARY KEY,
    ID_Aluno INT NOT NULL,
    ID_Turma INT NOT NULL,
    Data_Matricula DATE NOT NULL,
    FOREIGN KEY (ID_Aluno) REFERENCES Alunos(ID_Aluno),
    FOREIGN KEY (ID_Turma) REFERENCES Turmas(ID_Turma)
);
GO


-- Inserindo Alunos
INSERT INTO Alunos (Nome, Data_Nascimento, Sexo, Telefone) VALUES
('Maria Silva', '2005-03-12', 'F', '11999999999'),
('Jo�o Santos', '2006-07-08', 'M', '11988888888'),
('Ana Pereira', '2007-01-20', 'F', '11977777777'),
('Carlos Almeida', '2005-11-25', 'M', '11966666666');
GO

-- Inserindo Cursos
INSERT INTO Cursos (Nome_Curso, Duracao_Meses, Valor) VALUES
('Matem�tica B�sica', 6, 500.00),
('Ingl�s Intermedi�rio', 8, 800.00),
('Programa��o Python', 12, 1200.00);
GO

-- Inserindo Professores
INSERT INTO Professores (Nome, Especialidade, Telefone) VALUES
('Prof. Jos� Lima', 'Matem�tica', '11955555555'),
('Prof. Carla Ribeiro', 'L�ngua Inglesa', '11944444444'),
('Prof. Marcos Souza', 'Programa��o', '11933333333');
GO

-- Inserindo Turmas
INSERT INTO Turmas (ID_Curso, ID_Professor, Ano, Semestre) VALUES
(1, 1, 2024, 1), -- Matem�tica B�sica, Prof. Jos�
(2, 2, 2024, 1), -- Ingl�s Intermedi�rio, Prof. Carla
(3, 3, 2024, 1); -- Programa��o Python, Prof. Marcos
GO

-- Inserindo Matr�culas
INSERT INTO Matriculas (ID_Aluno, ID_Turma, Data_Matricula) VALUES
(1, 1, '2024-01-15'), -- Maria Silva em Matem�tica
(2, 2, '2024-01-16'), -- Jo�o Santos em Ingl�s
(3, 3, '2024-01-17'), -- Ana Pereira em Python
(4, 1, '2024-01-18'); -- Carlos Almeida em Matem�tica
GO
