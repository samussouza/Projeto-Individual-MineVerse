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
    fk_user int,
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
    qtd_tempo VARCHAR(10),
    data_hora DATETIME,
    foreign key (fk_user) references usuario (id)
);


select * from quiz_resultado;
select * from usuario;


