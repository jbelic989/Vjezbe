drop database if exists djecjaigraonica;
create database djecjaigraonica;
use djecjaigraonica;
create table dijete(
	sifra int not null primary key auto_increment
	ime varchar (50),
	imeroditelja varchar (50),
	prezime varchar(50),
	telefonroditelja char (20)
);

create table djelatnik(
	sifra int not null primary key auto_increment,
	
	