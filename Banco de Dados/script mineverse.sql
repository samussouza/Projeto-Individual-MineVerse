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
select * from quiz_resultado;
select * from usuario;

insert into usuario(nome, email, cpf, senha)
values ('Samuel', 'samuel@gmail.com', '1232','teste');
INSERT INTO quiz_resultado (fk_user, quest1, quest2, quest3, quest4, quest5, quest6, quest7, quest8, quest9, quest10, qtd_acertos, data_hora, tempo_gasto, pontuacao_total) 
VALUES (1, '1', '0', '1', '0', '1', '1', '0', '0', '1', '1', '6', '2024-05-17 08:30:00', '00:20:35', '18');


