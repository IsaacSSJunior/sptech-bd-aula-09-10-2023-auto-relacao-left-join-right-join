CREATE DATABASE db_pratica05;
USE db_pratica05;

CREATE TABLE Setor (
idSetor INT PRIMARY KEY AUTO_INCREMENT,
nomeSetor VARCHAR(45) NOT NULL,
andar INT NOT NULL
);

INSERT INTO Setor (nomeSetor, andar) VALUES
	('Recursos Humanos', 1),
	('TI', 2),
	('Financeiro', 3);
    
SELECT * FROM Setor;

CREATE TABLE Funcionario (
idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
telefoneP VARCHAR(20) NOT NULL,
telefoneS VARCHAR(20),
salario DOUBLE NOT NULL,
fkSetor INT, CONSTRAINT fkS FOREIGN KEY (fkSetor) REFERENCES Setor(idSetor)
);

INSERT INTO Funcionario (nome, telefoneP, telefoneS, salario, fksetor) VALUES
	('Isaac Souza','11919193312','1125537666',6782.21,2),
    ('Guilherme Neves','11915193318','1124537526',7382.11,2),
    ('Kaique Volpe','11959111312','1123538616',4112.11,3),
    ('Diego Souza','11949198311','1123537616',4082.10,3),
    ('Derik Gonçalves','11913193112','1125437646',4012.10,1),
    ('Leonardo Silva','11949993402','1125337326',5022.21,1);
    
SELECT * FROM Funcionario;

CREATE TABLE Acompanhante (
idAcompanhante INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
parentesco VARCHAR (45) NOT NULL,
dtNasc DATE,
fkFunc INT, CONSTRAINT fkFun FOREIGN KEY (fkFunc) REFERENCES Funcionario(idFuncionario)
);

INSERT INTO Acompanhante (nome, parentesco, dtNasc,fkFunc) VALUES
('Pedro Lopes', 'Primo', '2010-12-08',1),
('João Pedro', 'Tio', '1990-11-08',2),
('Maria Braga', 'Tia', '1989-11-21',3),
('Anderson silva', 'Amigo', '1987-05-08',4),
('Emily Rudd', 'Esposa', '1988-07-16',5),
('Scarlett Johansson', 'Namorada', '1988-02-18',6);

SELECT * FROM Acompanhante;

SELECT * FROM Setor JOIN Funcionario ON fkSetor = idSetor;

SELECT * FROM Setor JOIN Funcionario ON fkSetor = idSetor
	WHERE nomeSetor = 'TI';
    
SELECT * FROM Funcionario JOIN Acompanhante ON idFuncionario = fkFunc;

SELECT * FROM Funcionario AS f JOIN Acompanhante AS a ON idFuncionario = fkFunc
	WHERE f.nome = 'Isaac Souza';
    
SELECT * FROM Funcionario JOIN Setor ON fkSetor = idSetor JOIN Acompanhante ON idFuncionario = fkFunc; 




