create database db_lista1_exerc3;
use db_lista1_exerc3;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(255) not null,
    periodo varchar(30) not null,
    turma int not null,
    nota decimal (3,2) not null,
    primary key (id)
);


INSERT INTO tb_estudantes (nome, periodo, turma, nota) VALUES ("Natalia","Matutino",2,9.5);
INSERT INTO tb_estudantes (nome, periodo, turma, nota) VALUES ("Pedro","Matutino",1,8.5);
INSERT INTO tb_estudantes (nome, periodo, turma, nota) VALUES ("Maria","Noturno",3,5.5);

-- select dos estudantes com a nota > 7 --
select * from tb_estudantes where nota > 7;
-- select dos estudantes com a nota < 7 -- 
select * from tb_estudantes where nota < 7;

-- atualize um dado da tabela através de uma query de atualização -- 
update tb_estudantes set nota = 9 where id = 1;