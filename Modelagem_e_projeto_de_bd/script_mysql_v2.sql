CREATE TABLE tblClientes 
(PersoaID INT,
Nome varchar(255),
CEP varchar(255),
Endereco varchar(255),
Cidade varchar(255),
UF varchar(100)
);

INSERT INTO tblclientes (Nome, Endereco, Cidade, CEP, UF) 
VALUES ('BOB', 'Av. Getulio Vargas 21', 'Cuiaba', '78053500', 'MT');

INSERT INTO tblclientes (Nome, Endereco, Cidade, CEP, UF) 
VALUES ('BILL', 'Av. Getulio Vargas 2134', 'Caceres', '78053560', 'MT');

UPDATE tblclientes 
SET Nome = 'WILL', Cidade = 'Caceres' 
WHERE Nome = 'BOB';

DELETE FROM tblclientes 
WHERE Nome = 'WILL' AND Cidade = 'Caceres';

SELECT Nome, Cidade FROM tblclientes WHERE Cidade="Caceres"

SELECT Nome, Cidade FROM tblclientes

SHOW DATABASES

USE exemplo_mysql

SHOW PROCESSLIST

SHOW GRANTS

SHOW COLLATION

SHOW TABLES

CREATE TABLE pet (
apelido VARCHAR(20),
dono VARCHAR(20),
especie VARCHAR(20),
sexo CHAR(1),
nascimento DATE,
morte DATE
);

CREATE TABLE Pessoa (
IDPessoa int,
Nome varchar(100),
Nascimento date,
Bairro varchar(50),
UF varchar(2),
Cidade varchar(255)
);

DESCRIBE Pessoa

SHOW COLUMNS FROM Pessoa

SHOW TABLES

INSERT INTO pet (apelido, dono, especie, sexo, nascimento) VALUES ('REX','ANA','CAO','M','2010-10-26');
INSERT INTO pet (apelido, dono, especie, sexo, nascimento) VALUES ('MILU','ANA','CAO','M','2010-10-27');
INSERT INTO pet (apelido, dono, especie, sexo, nascimento) VALUES ('GARFIELD','BOB','GATO','M','2010-10-28');
INSERT INTO pet (apelido, dono, especie, sexo, nascimento) VALUES ('SNOOPY','BOB','CAO','M','2014-11-22');
INSERT INTO pet (apelido, dono, especie, sexo, nascimento) VALUES ('SCOOBY','CLARA','DOG','M','2013-12-27');

INSERT INTO Pessoa (IDPessoa, Nome, Nascimento, Bairro, UF, Cidade)
VALUES ('1','ANA','2015-10-23','Centro','SP','Rancharia');

INSERT INTO Pessoa (IDPessoa, Nome, Nascimento, Bairro, UF, Cidade)
VALUES ('2','BOB','2015-11-25','Porto','MT','Cuiaba');

INSERT INTO Pessoa (IDPessoa, Nome, Nascimento, Bairro, UF, Cidade)
VALUES ('3','Clara','2014-12-21','Porto','MT','Vacaria');

SELECT * FROM pet;

SELECT apelido, dono FROM pet;

SELECT apelido, sexo, nascimento FROM pet WHERE dono="ANA";

SELECT apelido, nascimento FROM pet WHERE nascimento >= "2010-10-20";

SELECT * FROM pet WHERE dono="BOB" and sexo="M";

UPDATE pet SET especie="LAGARTO", morte="2016-01-27" WHERE apelido="REX";

SELECT * FROM pet;

DELETE FROM pet WHERE apelido="REX";

DROP TABLE pet;

CREATE TABLE Dependente
(
IDDependente int,
NomeD varchar(100)
);

ALTER TABLE Dependente ADD IDPessoa INT;

ALTER TABLE Pessoa ADD PRIMARY KEY (IDPessoa);

ALTER TABLE Dependente 
ADD CONSTRAINT fk_IDPessoa
FOREIGN KEY (IDPessoa) 
REFERENCES Pessoa (IDPessoa);

ALTER TABLE Pessoa ADD INDEX IDPessoa_idx (IDPessoa);

ALTER TABLE Pessoa ADD INDEX UF_idx (UF);


INSERT INTO Dependente (IDDependente, NomeD, IDPessoa)
VALUES ('1','Filho1','2');

INSERT INTO Dependente (IDDependente, NomeD, IDPessoa)
VALUES ('2','Filho2','2');

INSERT INTO Dependente (IDDependente, NomeD, IDPessoa)
VALUES ('3','Filho3', '5');