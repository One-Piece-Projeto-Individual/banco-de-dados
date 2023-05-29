drop database projetoIndividual;

create database projetoIndividual;

use projetoIndividual;

create table personagem(
idPersonagem int primary key auto_increment,
nomePersonagem varchar(45)
);

insert into personagem(nomePersonagem) values
('luffy'),
('zoro'),
('nami'),
('usopp'),
('sanji'),
('chopper'),
('robin'),
('franky'),
('brook'),
('jinbe');

select * from personagem;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha varchar(45),
fkPersonagem int, constraint fkPersonagem foreign key (fkPersonagem) references personagem(idPersonagem)
);

select * from usuario;


