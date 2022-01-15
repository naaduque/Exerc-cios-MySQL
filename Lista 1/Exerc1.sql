create database db_lista1_exerc1;
use db_lista1_exerc1;

create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    cargo varchar(255) not null,
    cargaHora decimal (3,2) not null,
    salario decimal(6,2) not null,
    primary key (id)
);

INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("Natalia","Gerente",8.00,8000.00);
INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("Pedro","Coordenador",8.00,5000.00);
INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("Maria","Analista",8.00,2300.00);
INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("Sofia","Assistente Administrativo",8.00,1300.00);
INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("Carlos","Estagiário",6.00,900.00);

-- select dos funcionários com salário maior que 2000 --
select * from tb_funcionarios where salario > 2000.00;
-- select dos funcionários com salário menor que 2000 --
select * from tb_funcionarios where salario < 2000.00;

-- Atualizar um dado da tabela através de uma query de atualização --
update tb_funcionarios set salario = 1200.00 where id = 5;