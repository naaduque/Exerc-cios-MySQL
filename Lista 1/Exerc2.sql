create database db_lista1_exerc2;
use db_lista1_exerc2;


create table tb_produtos(
	id bigint auto_increment,
    nome varchar(30) not null,
    condicao varchar(30) not null,
    quantidade int not null,
    preco decimal (6,2) not null,
    primary key (id)
);

-- Popule a tabela com até 8 dados -- 
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("Tênis","Usado",7,150.00);
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("Secador de cabelo","Usado",10,200.00);
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("Iphone 11","Usado",20,4499.00);
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("Estojo","Novo",6,125.00);

--  select dos produtos com o valor maior que 500 --
select * from tb_produtos where preco > 500.00;

-- select dos produtos com o valor menor que 500 --
select * from tb_produtos where preco < 500.00;

-- Atualize um dado da tabela através de uma query de atualização -- 
update tb_produtos set preco = 100.00 where id = 4;
