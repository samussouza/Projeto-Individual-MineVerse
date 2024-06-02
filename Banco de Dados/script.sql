CREATE DATABASE mineverse;
USE mineverse;

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) unique,
    email VARCHAR(100) unique,
    senha VARCHAR(20)
); 

CREATE TABLE quiz_resultado (
    idTentativa INT PRIMARY KEY AUTO_INCREMENT,
    fk_user int,
    quest1 VARCHAR(5),
    quest2 VARCHAR(5),
    quest3 VARCHAR(5),
    quest4 VARCHAR(5),
    quest5 VARCHAR(5),
    quest6 VARCHAR(5),
    quest7 VARCHAR(5),
    quest8 VARCHAR(5),
    quest9 VARCHAR(5),
    quest10 varchar(5),
    qtd_acertos varchar(20),
    data_hora DATETIME,
    tempo_gasto time,
    pontuacao_total varchar(40),
    foreign key (fk_user) references usuario (id)
);


select * from quiz_resultado;
select * from usuario;

