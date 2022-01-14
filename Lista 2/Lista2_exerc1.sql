create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar(100) not null,
categoria varchar(50),
primary key (id)
);

insert into tb_classe(classe, categoria) values ("Bruxo", "Supremo");
insert into tb_classe(classe, categoria) values ("Mago", "Iniciante");
insert into tb_classe(classe, categoria) values ("Elfo", "Supremo");
insert into tb_classe(classe, categoria) values ("Anão", "Iniciante");
insert into tb_classe(classe, categoria) values ("Duende", "Supremo");
insert into tb_classe(classe, categoria) values ("Humano", "Iniciante");

create table tb_personagem(
	id bigint auto_increment,
    nome varchar(255) not null,
    classe varchar(30) not null,
    poderAtaque int not null,
    poderDefesa int not null,
    classe_id bigint,
	primary key (id),
    foreign key (classe_id) references tb_classe (id)
);

INSERT INTO tb_personagem (nome, classe, poderAtaque, poderDefesa, classe_id) VALUES ("Geralt", "Bruxo", 8000, 1666, 1);
INSERT INTO tb_personagem (nome, classe, poderAtaque, poderDefesa, classe_id) VALUES ("Yennefer", "Mago", 1600, 2000, 2);
INSERT INTO tb_personagem (nome, classe, poderAtaque, poderDefesa, classe_id) VALUES ("Jasper", "Humano", 2200, 1200, 5);
INSERT INTO tb_personagem (nome, classe, poderAtaque, poderDefesa, classe_id) VALUES ("Dobby", "Duende", 5000, 950, 3);
INSERT INTO tb_personagem (nome, classe, poderAtaque, poderDefesa, classe_id) VALUES ("Keith", "Anão", 1900, 900, 4);
INSERT INTO tb_personagem (nome, classe, poderAtaque, poderDefesa, classe_id) VALUES ("Caerin", "Elfo", 7100, 1500, 1);
INSERT INTO tb_personagem (nome, classe, poderAtaque, poderDefesa, classe_id) VALUES ("Orin", "Anão", 6600, 3500, 2);
INSERT INTO tb_personagem (nome, classe, poderAtaque, poderDefesa, classe_id) VALUES ("Vesemir", "Bruxo", 4600, 1800, 4);

select * from tb_personagem where poderAtaque > 2000;

select * from tb_personagem where poderDefesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select tb_personagem.nome, tb_personagem.classe, tb_personagem.poderAtaque, tb_personagem.poderDefesa, tb_classe.classe, tb_classe.categoria from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, tb_personagem.classe, tb_personagem.poderAtaque, tb_personagem.poderDefesa, tb_classe.classe, tb_classe.categoria from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 1;

