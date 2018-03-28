create database whohit
default character set utf8
default collate utf8_general_ci;
use whohit;



create table cadastro(
	id_cliente int not null primary key auto_increment ,
    Nome varchar (50) not null ,
    data_nascimento varchar (30) not null,
    cpf varchar (30) not null,		
	Endereço varchar (100) not null,
	Bairro varchar (50) not null,
	Cidade varchar (30) not null,
	estado varchar (30) not null,
	Email varchar (60) not null,
	Senha varchar (15) not null
)default charset=utf8;
select * from cadastro;

create table bloqueio(
	pin int 
);
describe bloqueio;
describe cadastro;

alter table bloqueio
add column id_cliente int;

alter table bloqueio
add foreign key (id_cliente)
references cadastro(id_cliente);

