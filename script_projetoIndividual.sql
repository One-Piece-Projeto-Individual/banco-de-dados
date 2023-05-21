drop database projetoIndividual;
 create database projetoIndividual;


use projetoIndividual;

create table cadastro(
idCadastro int primary key auto_increment,
usuario varchar(45),
email varchar(45),
senha varchar(45),
confirmarSenha varchar(45)
);
desc cadastro;
select * from cadastro;



create table analytics(
idAnalytics int auto_increment,
shanks int,
garp int,
ace int,
outros int,
fkCadastro int, constraint fkCad foreign key (fkCadastro) references cadastro(idCadastro),
			constraint pkLogAna primary key (idAnalytics, fkCadastro)
);
desc analytics;
select * from analytics;

create table personagem(
idPersonagem int primary key auto_increment,
nome varchar(45),
dtNascimento date,
funcao varchar(45),
bando varchar(45),
fkCadPers int, constraint fkCadPers foreign key (fkCadPers) references cadastro(idCadastro)
);
desc personagem;
select * from personagem;