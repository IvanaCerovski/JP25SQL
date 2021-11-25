drop database if exists festina;
create database festina character set utf8;
use festina;


create table kupac(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    brojtelefona varchar(50) not null,
    email varchar(50) not null,
    ulicaikucnibroj varchar(50) not null,
    mjesto varchar(50) not null,
    postanskibroj char(5) not null
);

create table proizvod(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal(18,2) 
);

create table proizvod_narudzba(
    sifra int not null primary key,
    kupac int,
    proizvod int,
    narudzba int 
);

create table narudzba(
    sifra int not null primary key auto_increment,
    brojnarudzbe char(9),
    kupac int not null,
    datumpakiranja date,
    datumotpreme date
);



alter table proizvod_narudzba add foreign key(narudzba) references narudzba(sifra);
alter table proizvod_narudzba add foreign key(proizvod) references proizvod(sifra);
alter table narudzba add foreign key(kupac) references kupac(sifra);





















    
