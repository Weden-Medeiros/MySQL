															////// Parte 1 //////
                                                            
Criar uma Nova Base de Dados MySQL e Base de Dados de Usuário, insira o nome, usuário e senha que deseja dar ao novo banco. Utilize o comando CREATE DATABASE
para criar um banco de dados no MySQL. Insira o nome do banco de dados que deseja criar após o comando CREATE DATABASE1. Por exemplo, para criar um banco de dados chamado bancodeteste, você pode usar o seguinte comando:
CREATE DATABASE bancodeteste;

Depois de criar o banco de dados, você precisa avisar ao MySQL que vai usá-lo. Para isso, basta usar o comando USE seguido pelo nome do banco de dado
Agora que você já criou e selecionou o banco de dados, pode começar a criar tabelas nele. Para criar uma tabela, você pode usar o comando CREATE TABLE seguido pelo nome da tabela e a definição das colunas2.

CREATE TABLE fornecedores(
    codigo int(4) AUTO_INCREMENT,
    nome varchar(30) NOT NULL,
    email varchar(50),
    PRIMARY KEY (codigo)
);
/*Para inserir dados na tabela, você pode usar o comando INSERT INTO seguido pelo nome da tabela e os valores a serem inseridos2.*/

INSERT INTO fornecedores (nome, email) VALUES ('Weden', 'weden@aluno.com');

/*Para consultar todos os dados de uma tabela, você pode usar o comando SELECT * FROM seguido pelo nome da tabela2.*/

SELECT * FROM fornecedores;
																////// Parte 2 //////
                                                                
/SELECT: Este comando é usado para consultar dados em uma tabela. Você pode especificar quais colunas deseja retornar e adicionar condições para filtrar os resultados.

INSERT: Este comando é usado para inserir novos registros em uma tabela. Você pode especificar os valores para cada coluna na linha que está sendo inserida.

UPDATE: Este comando é usado para atualizar os dados em uma tabela. Você pode especificar quais colunas deseja atualizar e adicionar condições para determinar quais linhas serão afetadas.

DELETE: Este comando é usado para excluir registros de uma tabela. Você pode adicionar condições para determinar quais linhas serão excluídas.

																			////// Parte 3 //////
                                                                            
Primeiro, crie o banco de dados usando o comando CREATE DATABASE:

CREATE DATABASE produtos;
Depois de criar o banco de dados, selecione-o usando o comando USE:

USE produtos;
Agora você pode criar uma tabela para armazenar informações sobre os produtos. Aqui está um exemplo de como você pode fazer isso:

																			////// Parte 4 //////
CREATE TABLE produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    unidade_medida VARCHAR(10) NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL
);
Essa tabela tem cinco colunas: id, descricao, unidade_medida, valor_unitario e quantidade. A coluna id é a chave primária da tabela e é preenchida automaticamente pelo banco de dados. As outras colunas armazenam informações sobre a descrição, unidade de medida, valor unitário e quantidade do produto.

																			////// Parte 5 //////
                                                                            
B. Depois de criar a tabela, você pode inserir dados nela usando o comando INSERT. Aqui está um exemplo de como você pode cadastrar 5 produtos:

INSERT INTO produto (descricao, unidade_medida, valor_unitario, quantidade)
VALUES ('Caneta', 'und', 1.50, 100),
       ('Caderno', 'und', 7.90, 50),
       ('Lápis', 'und', 0.80, 200),
       ('Borracha', 'und', 0.60, 150),
       ('Régua', 'und', 2.50, 75);
Para mostrar os produtos cadastrados, você pode usar o comando SELECT:


																			////// Parte 3 //////
                                                                            
SELECT * FROM produto;
C. Para concatenar uma mensagem mostrando os dados de um determinado produto, você pode usar a função CONCAT do MySQL. Aqui está um exemplo de como você pode fazer isso para mostrar os dados do produto com id = 1:

SELECT CONCAT('Há ', quantidade, ' ', descricao, 's no estoque, com valor unitário de ', valor_unitario, ' reais')
FROM produto
WHERE id = 1;
Espero que essas informações tenham sido úteis! Você tem mais alguma dúvida sobre como criar um banco de dados para armazenar informações sobre produtos?                                                                        
                                                                            
                                                                            