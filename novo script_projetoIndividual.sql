 drop database projetoIndividual;
 create database projetoIndividual;


use projetoIndividual;

create table personagem(
idPersonagem int primary key auto_increment,
nomePersonagem varchar(45)
);
select * from personagem;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha char(8),
fkPersonagem int, constraint fkPers foreign key (fkPersonagem) references personagem(idPersonagem)
);
desc usuario;
select * from usuario;

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



insert into usuario(nome, email, senha, fkPersonagem) values
('Ana', 'usuario1@gmail.com', 'senha123', 1),
('Pedro', 'usuario2@gmail.com', 'senha234', 2),
('Natalia', 'usuario3@gmail.com', 'senha345', 3),
('Bianca', 'usuario4@gmail.com', 'senha456', 1),
('Emily', 'usuario5@gmail.com', 'senha567', 1),
('Roberto', 'usuario6@gmail.com', 'senha678', 1),
('Marcelo', 'usuario7@gmail.com', 'senha789', 7),
('Caetano', 'usuario8@gmail.com', 'senha891', 8),
('Bruno', 'usuario9@gmail.com', 'senha910', 2),
('Rafael', 'usuario10@gmail.com', 'senha101', 10),
('Paulo', 'usuario11@gmail.com', 'senha112', 1),
('Fabio','fabio@gmail.com','12345678', 3);



select * from personagem join usuario on 
fkPersonagem = idPersonagem;


SELECT COUNT(usuario.fkPersonagem) as voto, personagem.nomePersonagem AS personagem 
FROM usuario JOIN personagem ON  personagem.idPersonagem = usuario.fkPersonagem group by usuario.fkPersonagem;