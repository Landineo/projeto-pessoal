create database poketwit;

use poketwit;

-- MYSQL
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
dtPost datetime default CURRENT_TIMESTAMP,
titulo varchar(40),
descricao varchar(280));

create table comentario (
dtComentario datetime default CURRENT_TIMESTAMP,
fkPost int,
foreign key (fkPost) references post(idPost),
fkUsuario int,
foreign key (fkUsuario) references usuario(id),
comentario varchar(280));

-- SQL SERVER
create table usuarioPoke (
id int primary key IDENTITY,
login varchar(45),
email varchar(45),
senha varchar(45),
nome varchar(45),
tipo_fav varchar(40),
poke_fav varchar(45));

create table postPoke (
idPost int primary key IDENTITY,
fkUsuario int,
foreign key (fkUsuario) references usuario(id),
dtPost datetime default CURRENT_TIMESTAMP,
titulo varchar(40),
descricao varchar(280));

create table comentarioPoke (
dtComentario datetime default CURRENT_TIMESTAMP,
fkPost int,
foreign key (fkPost) references post(idPost),
fkUsuario int,
foreign key (fkUsuario) references usuario(id),
comentario varchar(280));