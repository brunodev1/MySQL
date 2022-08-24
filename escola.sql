CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunes(
	id bigint auto_increment primary key,
	nome varchar(255),
    data_nascimento date,
    turma int,
    nota decimal(4,2)
);

SELECT * FROM tb_alunes;

INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Eduardo","2002-08-22",57,4.0);

SELECT * FROM tb_alunes where nota > 7;

SELECT * FROM tb_alunes where nota < 7;

UPDATE tb_alunes SET nota = 7 WHERE id=1;
