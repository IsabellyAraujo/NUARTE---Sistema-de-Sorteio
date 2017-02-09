create table Espectador(
	id int identity not null,
	nome varchar(150) not null,
	rg varchar(12) not null,
	primary key(id)
)

create table Dia(
	id int identity not null,
	data date not null,
	primary key(id)
)

insert into Dia(data) values('2017/03/02')
insert into Dia(data) values('2017/03/03')
insert into Dia(data) values('2017/03/04')

create table DiaEscolhido(
	espectador_id int not null,
	dia_id int not null,
	primary key(espectador_id, dia_id)
)

create table Sorteio(
	id int identity not null,
	dia_id int not null,
	primary key(id),
	foreign key(dia_id) references Dia(id)
)

create table Sorteados(
	espectador_id int not null,
	sorteio_id int not null,
	primary key(espectador_id, sorteio_id)
)

create table Espetaculo(
	id int identity not null,
	titulo varchar(100) not null,
	professora varchar(150) not null,
	cia varchar(50) not null,
	dia_id int not null,
	mostra_id int not null,
	primary key(id),
	foreign key(dia_id) references Dia(id),
	foreign key(mostra_id) references Mostra(id)
)

create table Mostra(
	id int identity not null,
	descricao varchar(300) not null,
	semestre int not null,
	ano int not null,
	primary key(id)
)

create table Administrador(
	id int identity not null,
	usuario varchar(150) not null,
	email varchar(256) not null,
	senha varchar(25) not null,
	primary key(id)
)