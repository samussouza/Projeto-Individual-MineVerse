CREATE DATABASE MineVerse;
USE MineVerse;

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) unique,
    email VARCHAR(100) unique,
    senha VARCHAR(50),
    cpf VARCHAR(20) unique
); 
CREATE TABLE quiz_resultado (
    idTentativa INT PRIMARY KEY AUTO_INCREMENT,
    quest1 VARCHAR(50),
    quest2 VARCHAR(50),
    quest3 VARCHAR(50),
    quest4 VARCHAR(50),
    quest5 VARCHAR(50),
    quest6 VARCHAR(50),
    quest7 VARCHAR(50),
    quest8 VARCHAR(50),
    quest9 VARCHAR(50),
    quest10 VARCHAR(60),
    data_hora DATETIME
);



INSERT INTO usuario (nome, email, senha, cpf) 
VALUES ('Samuel Sales', 'samuel@gmail.com', '12345', '12345678901');

select * from quiz_resultado;
select * from usuario;



