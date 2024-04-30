CREATE DATABASE MineVerse;
USE MineVerse;

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    email VARCHAR(100),
    senha VARCHAR(50),
    cpf VARCHAR(20)
);
CREATE TABLE quiz_resultado (
    id INT AUTO_INCREMENT,
    fk_user INT,
    quest1 VARCHAR(50),
    quest2 VARCHAR(50),
    quest3 VARCHAR(50),
    data_hora datetime,
    PRIMARY KEY (id),
    CONSTRAINT quiz_resultado_ibfk_1 FOREIGN KEY (fk_user)
        REFERENCES usuario (id)
);

INSERT INTO usuario (nome, email, senha, cpf) 
VALUES ('Samuel Sales', 'samuel@gmail.com', '12345', '12345678901');

insert into quiz_resultado (quest1, quest2, quest3, fk_user)
values ('teste', 'teste', 'teste', 1);

select * from quiz_resultado;
select * from usuario;


