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
    idTentativa INT AUTO_INCREMENT,
    fk_user INT,
    quest1 VARCHAR(50),
    quest2 VARCHAR(50),
    quest3 VARCHAR(50),
    data_hora datetime,
    PRIMARY KEY (idTentativa),
    foreign key (fk_user) references usuario (id)
);
drop database quiz_resultado;
INSERT INTO usuario (nome, email, senha, cpf) 
VALUES ('Samuel Sales', 'samuel@gmail.com', '12345', '12345678901');

insert into quiz_resultado (quest1, quest2, quest3, fk_user)
values ('teste', 'teste', 'teste', 1);

select * from quiz_resultado;
select * from usuario;
drop table usuario;


