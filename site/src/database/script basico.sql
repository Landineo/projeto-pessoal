create database poketwit;

use poketwit;

create table usuario (
id int primary key auto_increment,
login varchar(45),
email varchar(45),
senha varchar(45),
nome varchar(45),
tipo_fav varchar(40),
poke_fav varchar(45));

create table post (
idPost int primary key auto_increment,
fkUsuario int,
foreign key (fkUsuario) references usuario(id),
dtPost datetime,
titulo varchar(40),
descricao varchar(280));

create table comentario (
dtComentario datetime,
fkPost int,
foreign key (fkPost) references post(idPost),
fkUsuario int,
foreign key (fkUsuario) references usuario(id),
comentario varchar(280));

select * from usuario;

insert into usuario(login, email, nome) values 
('lando', 'lando@lando.com', '123'),
('lanbo', 'lanbo@lanbo.com', '123'),
('lanjo', 'lanjo@lanjo.com', '123');

select * from usuario where email = null OR login = 'lando' && nome = '123';