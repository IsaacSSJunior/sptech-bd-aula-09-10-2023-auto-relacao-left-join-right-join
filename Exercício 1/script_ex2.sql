-- CREATE DATABASE db_pratica05;
USE db_pratica05;

CREATE TABLE Setor (
idSetor INT PRIMARY KEY AUTO_INCREMENT,
nomeSetor VARCHAR(45),
andar INT
);

CREATE TABLE Funcionario (
idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
telefoneP VARCHAR(20),
telfoneS VARCHAR(20),
salario DOUBLE,
fkSetor INT, CONSTRAINT fkS FOREIGN KEY (fkSetor) REFERENCES Setor(idSetor)
);

