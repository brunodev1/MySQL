CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment primary key,
    nome varchar(255),
    data_nascimento date,
    setor varchar(100),
    salario decimal(7,2)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome,data_nascimento,setor,salario)VALUES("Ana","2001-03-11","Administração",2000.40);

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 4000.00 WHERE id=1;