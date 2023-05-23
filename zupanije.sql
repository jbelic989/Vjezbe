# Ovo je komentar

 -- putanju  C:\Users\Katedra\D... prilagoditi svojoj datoteci na disku
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\josip\EDUNOVAJP28\zupanije.sql
drop database if exists zupanije;
create database zupanije;
use zupanije;
create table zupanija(
	sifra int not null primary key auto_increment,
	naziv varchar(50),
	zupan int
);
create table zupan(
	sifra int not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null
);
create table opcina(
	sifra int not null primary key auto_increment,
	zupanija int,
	naziv varchar(50)
);
create table mjesto(
	sifra int not null primary key auto_increment,
	opcina int,
	naziv varchar(50)
);

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);

insert into zupan(sifra,ime,prezime)
values (null, 'Ivan','Anušić'),(null, 'Damir','Dekanić'),
(null,'Danijel','Marušić');

insert into zupanija(sifra,naziv,zupan) values
(null,'osječko-baranjska županija',1),(null,'vukovarsko-srijemska',2),(null,'brodsko-posavska',3);

# osjecko-baranjska

insert into opcina(sifra,zupanija,naziv)values
(null,1,'valpovo'),(null,1,'cepin'),(null,1,'bizovac');

insert into mjesto(sifra,opcina,naziv)values
(null,1,'šag'),(null,1,'nard'),(null,1,'ladimirevci'),
(null,1,'cepin'),(null,1,'livana'),(null,1,'bizovac'),(null,1,'cret');

#vukovarsko-srijemska

insert into opcina(sifra,zupanija,naziv)values
(null,2,'vukovar'),(null,2,'ivankovo'),(null,2,'babina greda');

insert into mjesto(sifra,opcina,naziv)values
(null,2,'retkovci'),(null,2,'prkovci'),(null,2,'ivankovo'),
(null,2,'nožice'),(null,2,'kladavac'),(null,2,'babina greda');






