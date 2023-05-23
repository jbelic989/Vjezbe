-- putanju  C:\Users\Katedra\D... prilagoditi svojoj datoteci na disku
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\josip\EDUNOVAJP28\galerija.sql

drop database if exists galerija;
create database galerija;
use galerija;
create table autor(
    id_autor int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50)
);
create table galerija(
    id_galerija int not null primary key auto_increment,
    naziv varchar(50) not null,
    id_nadredjena int,
    id_autor int not null,
    foreign key (id_autor) references autor(id_autor),
    foreign key (id_nadredjena) references galerija(id_galerija)
);
create table oznaka(
    id_oznaka int not null primary key auto_increment,
    naziv varchar(50)
);
create table slika(
    id_slika int not null primary key auto_increment,
    id_galerija int not null,
    putanja varchar (150),
    foreign key (id_galerija) references galerija(id_galerija)
);
create table slika_oznaka(
    id_slika_oznaka int not null primary key auto_increment,
    id_slika int,
    id_oznaka int,
    foreign key (id_slika) references slika(id_slika),
    foreign key (id_oznaka) references oznaka(id_oznaka)
);

insert into autor (ime,prezime) values
('Sliško','Blokić'),
('Jelko','Krivozub'),
('Janko','Razbojnik');

insert into galerija(naziv,id_nadredjena,id_autor) values
('Galerija TOP', 1, 1),
('Galerija KIST', 2, 2),
('Galerija TRICA', 2, 3);


insert into slika(id_galerija,putanja) values
(1,'C:\Users\josip\Documents\EDUNOVAJP28\JP_di_er_dijagram.png'),
(2,'C:\Users\josip\Documents\EDUNOVAJP28\zadatak1.jpg'),
(3,'C:\Users\josip\Documents\EDUNOVAJP28\GIT.pdf');

insert into oznaka(naziv) values
    ('Kubanizam'),
    ('Realizam'),
    ('Mrtva_priroda');

update galerija
set naziv = 'Promjena naziva galerije' where id_galerija = 1;
update autor set ime = 'Zdravko' where id_autor = 1;
delete from oznaka where naziv = 'Kubanizam';
delete from slika where putanja = 'C:\Users\josip\Documents\EDUNOVAJP28\JP_di_er_dijagram.png';
