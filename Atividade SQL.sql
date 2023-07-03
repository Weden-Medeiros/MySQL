CREATE DATABASE Atividade_sql;




USE atividade_sql;
#drop table pessoa; comando para apagar toda a tabela.(tem que recriar caso precise)
CREATE TABLE pessoa(
Nome VARCHAR(100),
Idade INT,
Telefone VARCHAR(15),
Endereco VARCHAR(150),
Email VARCHAR(60)


);

INSERT INTO pessoa VALUES ("Weden de medeiros", "30","619812530","QNJ 13","Wedenaluno@gmail.com"),
							("Nome 2", "30","619812531","QNJ 13",null),
                            ("Nome 3", "31","619812532","QNJ 14",null),
                            ("Nome 4", "32","619812533","QNJ 15",null),
                            ("nome 5", "33","619812534","QNJ 16",null),
                            ("Nome 6", "33","619812535","QNJ 17",null),
                            ("Nome 7", "34","619812536","QNJ 18",null),
                            ("Nome 8", "34","619812537","QNJ 19",null),
                            ("Nome 9", "35","619812538","QNJ 20",null),
                            ("Nome 10", "35","619812539","QNJ 21",null);


select *from pessoa;
select * from pessoa where endereco like '%QNJ%' and idade > 34;

insert into pessoa values("Pedro", "55", "6198163999", "QNJ 25", "Pedro@gmail.com");

select count(*) as Quantidade from pessoa where endereco like '%QNJ%' ;

select * from pessoa  where idade > 34;

select count(*) as quantidade, nome from pessoa where idade > 32 group by nome;

select Nome from pessoa where Email is null;

SET SQL_SAFE_UPDATES =0;
update pessoa set nome = "Nome 5" where Nome = "nome 5";

select Nome from pessoa where  Nome = "Nome 5";