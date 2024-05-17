CREATE DATABASE MineVerse;
USE MineVerse;

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
alter table usuario add column tempo_jogador varchar (20);
select * from quiz_resultado;
select * from usuario;

insert into usuario(nome, email, cpf, tempo_jogador)
values ('Samuel', 'samuel@gmail.com', '1232','teste', '1 a 2 anos');
INSERT INTO quiz_resultado (fk_user, quest1, quest2, quest3, quest4, quest5, quest6, quest7, quest8, quest9, quest10, qtd_acertos, data_hora, tempo_gasto, pontuacao_total) 
VALUES (1, '1', '0', '1', '0', '1', '1', '0', '0', '1', '1', '6', '2024-05-17 08:30:00', '00:20:35', '18');

SELECT 
    AVG(CAST(qtd_acertos AS DECIMAL(4,2))) AS media_acertos_total, 
    AVG(CAST( pontuacao_total AS DECIMAL(4,2))) AS media_pontuacao_total
	
FROM 
    quiz_resultado;

SELECT AVG(CAST(qtd_acertos AS DECIMAL)) AS media_acertos, AVG(CAST(tempo_gasto AS DECIMAL)) AS media_tempo_gasto
FROM quiz_resultado;
SELECT AVG(CAST(qtd_acertos AS UNSIGNED)) AS media_acertos, AVG(CAST(tempo_gasto AS DECIMAL(10,2))) AS media_tempo_gasto
FROM quiz_resultado;
SELECT fk_user,
       AVG(CAST(tempo_gasto AS DECIMAL(10,2))) AS media_tempo_gasto
FROM quiz_resultado
GROUP BY fk_user;

SELECT 
    fk_user,
    AVG(CAST(qtd_acertos AS DECIMAL(4,2))) AS media_acertos_total, 
    AVG(CAST(pontuacao_total AS DECIMAL(4,2))) AS media_pontuacao_total
FROM 
    quiz_resultado
GROUP BY 
    fk_user
ORDER BY 
    fk_user;
SELECT AVG(CAST(tempo_gasto AS DECIMAL(10,2))) AS media_tempo_gasto
FROM quiz_resultado;
  
 SELECT AVG(TIME_TO_SEC(tempo_gasto)) AS media_tempo_gasto
FROM quiz_resultado;

SELECT  SEC_TO_TIME(AVG(TIME_TO_SEC(tempo_gasto))) AS media_tempo_gasto
FROM quiz_resultado;
