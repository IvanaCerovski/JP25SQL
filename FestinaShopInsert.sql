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
    cijena decimal(18,2),
    kupac int 
);

create table narudzba(
    sifra int not null primary key auto_increment,
    kupac int not null,
    proizvod int not null,
    cijena decimal(18,2)
);

create table posiljka(
    sifra int not null primary key auto_increment,
    narudzba int not null,
    datumivrijemenaplate datetime,
    datumivrijemepakiranja datetime,
    datumivrijemeotpreme datetime
);


alter table proizvod add foreign key(kupac) references kupac(sifra);

alter table narudzba add foreign key proizvod(sifra) references proizvod(sifra);
alter table narudzba add foreign key kupac(sifra) references kupac(sifra);

alter table posiljka add foreign key narudzba(sifra) references narudzba(sifra);



# Kupac dodani kupci

select * from kupac;

insert into kupac (sifra,ime,prezime,brojtelefona,email,ulicaikucnibroj,mjesto,postanskibroj) values
(null,'Ivana','Cerovski','098539473','ivana.cerovski85@gmail.com','Hrvatske Republike 40','Antunovac','31216'),
(null,'Sanda','Mucić','0955518614','sanda.mucic@gmail.com','Laslovačka 6','Osijek','31000'),
(null,'Marija','Rogić','0981738294','marija.rogic@gmail.com','Vijenac Petrove Gore 4','Osijek','31000'),
(null, 'Tomislav','Cerovski','0989186861','tomislav.cerovski@gmail.com','Ante Starčevića 45', 'Antunovac', '31216');








    
