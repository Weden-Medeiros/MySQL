create database normalizacao;
use normalizacao;

/*
para uma tabela estar na primeira forma, é necessario que não existam grupos de valores repetidos, seus valores devem ser atomicos (unicos) e a tabela deve possui um identificador que identifique o dado como unico*/

CREATE TABLE pessoa(
ID integer primary key auto_increment,
Nome VARCHAR(50),
Sobrenome VARCHAR(50),
Idade INT,
Sexo VARCHAR(15),
Email VARCHAR (100),
Cpf VARCHAR (20)not null unique,
Cidade VARCHAR(100),
Bairro VARCHAR(150),
Cep VARCHAR(50),
Complimento VARCHAR(150),
Logradouro VARCHAR(150),
Estado VARCHAR(50),
Uf VARCHAR(2),
Telefone VARCHAR (50),
DDD VARCHAR (5),
Celular VARCHAR (20),
Fixo VARCHAR (20),
Comercial VARCHAR (20)

);
select *from pessoa;

Insert into pessoa values (null, 
"Weden", 
"Medeiros",
 33,
 "M",
 "weden@aluno.com",
 "123.456.789.00",
 "Brasilia",
 "Não sei",
 "72130-130",
 "Senai",
 "Sig",
 "Distrito Federal",
 "DF",
 "9999-0000",
 "061",
 "9999-9999",
 null,
 null);
 
 select *from pessoa;
 
 /*
 para estar na segunda forma normal os atributos devem depender da chave primaria em sua totalidade não apenas parte dela*/
 
 create table pessoa2(
idPessoa integer primary key auto_increment,
Nome VARCHAR(50),
Sobrenome VARCHAR(50),
Cpf VARCHAR (20)not null unique,
Sexo VARCHAR(15),
id_endereco integer,
constraint fk_id_endereco_endereco
foreign key(id_endereco) references endereco(idendereco)
 );
 
 create table endereco(
 idendereco integer primary key auto_increment,
Cep VARCHAR(50),
Bairro VARCHAR(100),
Cidade VARCHAR (50),
Uf VARCHAR(5)
 );
 
insert into endereco values(null, "71300-00", "não sei", "brasilia", "DF"); 
insert into endereco values(null, "71300-99", "não sei", "brasilia", "DF"); 
insert into endereco values(null, "71300-70", "não sei", "brasilia", "DF"); 

insert into pessoa2 values(null, "Weden", "Medeiros", "123.123.123.00", "M", 1);
insert into pessoa2 values(null, "janaina", "arque", "123.123.123.80", "F", 2);
insert into pessoa2 values(null, "ana", "mattos", "123.123.123.99", "F", 3);

 
 
 
 select * from pessoa2;
 
 select * from endereco;
 
 /*drop table pessoa2*/
 
 select * from endereco inner join
pessoa2 on endereco.idendereco = pessoa2.id_endereco;

select nome, cpf, bairro, cidade, uf from pessoa2
inner join endereco on pessoa2.id_endereco = endereco.idendereco;

create table telefone(

Idtelefone integer primary key auto_increment,
ddd VARCHAR(5),
numero VARCHAR(50),
id_pessoa integer,
constraint fk_id_pessoa_pessoa
foreign key(id_pessoa) references pessoa2(idPessoa)
);

insert into telefone values(null, "061", "99999-0000", 1),
(null, "061", "99999-0001", 1),
(null, "062", "99999-0002", 2),
(null, "063", "99999-0003", 3);

select * from telefone;