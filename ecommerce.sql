CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment primary key,
    produto varchar(100),
    categoria varchar(100),
    marca varchar(100),
    peso decimal(6,2),
    preco decimal(7,2)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(produto,categoria,marca,peso,preco)VALUES("Camiseta","Vestuário","Reserva",112,110.00);

SELECT *  FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 500 WHERE id=8

