CREATE DATABASE db_Treinador;
USE db_Treinador;

CREATE TABLE Treinador(
idTreinador INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
telefone VARCHAR(20) NOT NULL,
email VARCHAR(45) NOT NULL,
fkSupervisor INT, CONSTRAINT fkSuper FOREIGN KEY (fkSupervisor) REFERENCES Treinador(idTreinador)
)AUTO_INCREMENT = 10;

INSERT INTO Treinador (nome, telefone, email, fkSupervisor) VALUES
	('Bob Bowman','+12017401141','bob.bow@treiner.com',null),
    ('Gregg Troy','+12057604111','gregg.try@treiner.com',null),
    ('Erick Bowman','+12137501115','erik.bow@treiner.com',null),
    ('Victor Bowman','+12551604151','victor.bow@treiner.com',null),
    ('Spilber Troy','+12957201461','spilber.try@treiner.com',null),
    ('Chris Troy','+12757234121','chris.try@treiner.com',null);
        
UPDATE Treinador SET fkSupervisor = 10
	WHERE idTreinador = 12;

UPDATE Treinador SET fkSupervisor = 10
	WHERE idTreinador = 13;
    
UPDATE Treinador SET fkSupervisor = 11
	WHERE idTreinador = 14;
    
UPDATE Treinador SET fkSupervisor = 11
	WHERE idTreinador = 15;

CREATE TABLE Nadador (
idNadador INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
estadoOrigem VARCHAR(45) NOT NULL,
dtNasc DATE NOT NULL,
fkTreinador INT, CONSTRAINT fkTre FOREIGN KEY (fkTreinador) REFERENCES Treinador(idTreinador)
)AUTO_INCREMENT = 100;

INSERT INTO Nadador (nome,estadoOrigem, dtNasc, fkTreinador) VALUES
	('Michael Phelps Jr','MaryLand', '2005-06-23',12),
    ('Ryan Muprhy Jr','Indianápolis', '2003-04-20',12),
    ('William Jack','Brooklin', '2005-01-11',13),
    ('Jon laker','Califórnia', '2001-02-06',14),
    ('Tom chesse','Montana', '2000-07-08',15);
    
SELECT * FROM Treinador;

SELECT * FROM Nadador;

SELECT * FROM Treinador JOIN Nadador ON idTreinador = fkTreinador;

SELECT * FROM Treinador AS T JOIN Nadador AS N ON idTreinador = fkTreinador
	WHERE T.nome = 'Chris Troy';
    
SELECT * FROM Treinador AS T JOIN Treinador AS TS ON TS.fkSupervisor = T.idTreinador;

SELECT * FROM Treinador AS T JOIN Treinador AS TS ON TS.fkSupervisor = T.idTreinador
	WHERE T.nome = 'Gregg Troy';
    
SELECT * FROM Treinador AS T JOIN Treinador AS TS ON T.idTreinador = TS.fkSupervisor
	JOIN Nadador ON TS.idTreinador = fkTreinador;
    
SELECT * FROM Treinador AS T JOIN Treinador AS TS ON T.idTreinador = TS.fkSupervisor
	JOIN Nadador ON TS.idTreinador = fkTreinador
		WHERE T.nome = 'Bob Bowman';



    
    
    

