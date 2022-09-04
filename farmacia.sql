CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	
    id bigint auto_increment primary key,
	tipo_do_produto varchar(255),
	precisa_de_receita boolean

);

CREATE TABLE tb_produtos (
	
    id bigint auto_increment primary key,
    nome_do_produto varchar(255),
    marca varchar(255),
    publico varchar(255),
	preco decimal(6,2), 
	categorias_id bigint,
    
    FOREIGN KEY(categorias_id) REFERENCES tb_produtos(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(tipo_do_produto, precisa_de_receita)VALUES("Remédio",false);
INSERT INTO tb_categorias(tipo_do_produto, precisa_de_receita)VALUES("Remédio Controlado",true);
INSERT INTO tb_categorias(tipo_do_produto, precisa_de_receita)VALUES("Higiene Pessoal",false);
INSERT INTO tb_categorias(tipo_do_produto, precisa_de_receita)VALUES("Aparelhos médicos",false);
INSERT INTO tb_categorias(tipo_do_produto, precisa_de_receita)VALUES("Outros",false);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_do_produto,marca,publico,preco,categorias_id)VALUES("Dipirona","Novalgina","Todos",3.99,1);
INSERT INTO tb_produtos(nome_do_produto,marca,publico,preco,categorias_id)VALUES("Loratadina","Pratti","Todos",2.99,1);
INSERT INTO tb_produtos(nome_do_produto,marca,publico,preco,categorias_id)VALUES("Diazepam","Valium","Todos",37.99,2);
INSERT INTO tb_produtos(nome_do_produto,marca,publico,preco,categorias_id)VALUES("Absorvente","Sempre Livre","Feminino",9.99,3);
INSERT INTO tb_produtos(nome_do_produto,marca,publico,preco,categorias_id)VALUES("Prestobarba","Gillette","Masculino",7.90,3);
INSERT INTO tb_produtos(nome_do_produto,marca,publico,preco,categorias_id)VALUES("Medidor de pressão","G-Tech","Todos",98.89,4);
INSERT INTO tb_produtos(nome_do_produto,marca,publico,preco,categorias_id)VALUES("Oximetro","Multilaser","Todos",76.47,4);
INSERT INTO tb_produtos(nome_do_produto,marca,publico,preco,categorias_id)VALUES("Garrafa de água","Bonafonte","Todos",2.50,5);

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_do_produto LIKE "%C%";

SELECT * FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categorias_id;

SELECT * FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categorias_id WHERE tipo_do_produto LIKE "Remédio";

