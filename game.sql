CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (

	id bigint auto_increment primary key,
    classe varchar(255),
    genero varchar(255)

);

CREATE TABLE tb_personagens (
	
    id bigint auto_increment primary key,
    nome varchar(255),
    forca int,
    defesa int,
    agilidade int,
    classes_id bigint,
	
    FOREIGN KEY(classes_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes(classe,genero)VALUES("Mago","Masculino");
INSERT INTO tb_classes(classe,genero)VALUES("Mago","Feminino");
INSERT INTO tb_classes(classe,genero)VALUES("Lutador","Masculino");
INSERT INTO tb_classes(classe,genero)VALUES("Arqueiro","Feminino");
INSERT INTO tb_classes(classe,genero)VALUES("Curandeiro","Masculino");

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens(nome,forca,defesa,agilidade,classes_id)VALUES("Carius",4000,2400,1200,3);
INSERT INTO tb_personagens(nome,forca,defesa,agilidade,classes_id)VALUES("Bruno",5000,9000,5000,1);
INSERT INTO tb_personagens(nome,forca,defesa,agilidade,classes_id)VALUES("Rodrigo",4000,2400,1200,4);
INSERT INTO tb_personagens(nome,forca,defesa,agilidade,classes_id)VALUES("Flavin",3000,5000,2000,3);
INSERT INTO tb_personagens(nome,forca,defesa,agilidade,classes_id)VALUES("Xaolin",3200,1000,1000,2);
INSERT INTO tb_personagens(nome,forca,defesa,agilidade,classes_id)VALUES("LaBraba",3040,3400,3200,4);
INSERT INTO tb_personagens(nome,forca,defesa,agilidade,classes_id)VALUES("Raika",4320,3000,2300,2);
INSERT INTO tb_personagens(nome,forca,defesa,agilidade,classes_id)VALUES("Giovas",8000,6400,9200,1);


SELECT * FROM tb_personagens WHERE forca > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id = tb_classes.id WHERE classe LIKE "Mago";