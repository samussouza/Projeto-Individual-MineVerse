CREATE DATABASE mineverse;
USE mineverse;

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    email VARCHAR(100),
    senha VARCHAR(50)
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
    qtd_acertos varchar(20),
    data_hora DATETIME,
    tempo_gasto varchar(40),
    pontuacao_total varchar(40),
    foreign key (fk_user) references usuario (id)
);

select   TIME_FORMAT(SEC_TO_TIME(ROUND(AVG(TIME_TO_SEC(STR_TO_DATE(tempo_gasto, '%i:%s'))))), '%i:%s') AS media_tempo_gasto from quiz_resultado;
select * from quiz_resultado;
select * from usuario;

INSERT quiz_resultado (fk_user, quest1, quest2, quest3, quest4, quest5, quest6, quest7, quest8, quest9, quest10, qtd_acertos, data_hora, tempo_gasto, pontuacao_total) 
VALUES (1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2024-05-17 08:30:00', '02:45', '6');
