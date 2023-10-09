CREATE DATABASE db_pratica05;
USE db_pratica05;

CREATE TABLE Pessoa (
idPessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
dtNasc DATE,
profissao VARCHAR(45)
);

CREATE TABLE Gasto (
idGasto INT PRIMARY KEY AUTO_INCREMENT,
dataGasto DATE,
valor DOUBLE,
descricao VARCHAR (45),
fkPessoa INT,
CONSTRAINT fkP FOREIGN KEY (fkPessoa) REFERENCES Pessoa(idPessoa) 
);

INSERT INTO Pessoa (nome,dtNasc,profissao) VALUES
	('Isaac', '2005-02-08','DBA'),
	('Volpe', '2004-09-03','QA'),
	('Diego', '2004-01-03','DevOps');

INSERT INTO Gasto (dataGasto, valor, descricao, fkPessoa) VALUES 
	('2023-02-02',220.20,'SSD 256gb',1),
    ('2023-02-02',420.10,'Bateria de Carro',2),
    ('2023-02-02',120.20,'Bíblia King James',3);
    
SELECT * FROM Pessoa;

SELECT * FROM Gasto;

SELECT * FROM Pessoa
	WHERE dtNasc LIKE '%03';
    
SELECT * FROM Gasto
	WHERE valor >= 200;
    
SELECT * FROM Pessoa JOIN Gasto ON idPessoa = fkPessoa;

SELECT * FROM Pessoa JOIN Gasto ON idPessoa = fkPessoa
	WHERE idPessoa = 1;

UPDATE Gasto SET valor = 210.1
	WHERE fkPessoa = 1;
    
DELETE FROM Gasto WHERE fkPessoa = 3;

