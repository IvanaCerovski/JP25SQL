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
    proizvod int,
    narudzba int,
    kolicina int,
    cijena decimal(18,2)
);

create table narudzba(
    sifra int not null primary key auto_increment,
    brojnarudzbe char(6),
    kupac int not null,
    datumpakiranja date,
    datumotpreme date
);



alter table proizvod_narudzba add foreign key(narudzba) references narudzba(sifra);
alter table proizvod_narudzba add foreign key(proizvod) references proizvod(sifra);
alter table narudzba add foreign key(kupac) references kupac(sifra);


insert into kupac(sifra,ime,prezime,brojtelefona,email,ulicaikucnibroj,mjesto,postanskibroj) values
(null,'Abby','Wambach','0951115341','abby.wambach20@gmail.com','Braće Radić 20','Osijek','31000'),
(null,'Nada','Bešker','0954908553','nada.besker@gmail.com','Ulica Pobjede 12','Laslovo','31207'),
(null,'Tobin','Heath','0956502361','tobin.heath17@gmail.com','Vukovarska 31', 'Osijek','31000');



select * from proizvod;
insert into proizvod(sifra,naziv,cijena) values
(null,'Festina Chrono Bike 2021 F20543/1',1690.00),
(null,'Festina Chrono Bike 2021 F20543/2',1690.00),
(null,'Festina Chrono Bike 2021 F20543/3',1690.00),
(null,'Festina Chrono Bike 2021 F20543/4',1690.00);

delete from proizvod where sifra > 4;

select * from kupac;

insert into kupac(ime,prezime,brojtelefona,email,ulicaikucnibroj,mjesto,postanskibroj) values
('Hope','Solo','0951893866','hope.solo1@gmail.com','Trg Bana Josipa Jelačića 25','Zagreb','10000'),
('Samantha','Kerr','0954395996','sam.kerr20@gmail.com','Petrove Gore 8','Pula','52100'),
('Dubravka','Lišnić','0952770032','lisnic.dubravka4@gmail.com','Ulica Pobjede 34','Laslovo','31207');

select * from proizvod;
insert into proizvod(sifra,naziv,cijena) values
(null,'Festina Chrono Bike 2021 F20544/1','1630.00'),
(null,'Festina Chrono Bike 2021 F20544/2','1630.00'),
(null,'Festina Chrono Bike 2021 F20544/3','1630.00'),
(null,'Festina Chrono Bike 2021 F20544/4','1630.00'),
(null,'Festina Chrono Bike 2021 F20544/5','1630.00'),
(null,'Festina Chrono Bike 2021 F20544/6','1630.00'),
(null,'Festina Chrono Bike 2021 F20544/7','1630.00'),
(null,'Festina Chrono Bike 2021 F20544/8','1630.00');

describe kupac;
select * from kupac;
insert into kupac(ime,prezime,brojtelefona,email,ulicaikucnibroj,mjesto,postanskibroj)
values('Sanda','Mucić','0957917841','sanda.mucic@gmail.com','Kolodvorska 16','Antunovac',31216),
('Marija','Rogić','0958345239','rogic.marija@gmail.com','Franje Krežme 3','Rijeka',51000);


insert into proizvod(sifra,naziv,cijena)
values
(null,'Festina Chrono Bike Limited Edition F20453/1',4070.00),
(null,'Festina Chrono Bike Special Edition F20329/1',4020.00),
(null,'Festina Chrono Bike Limited Edition F20527/1',3780.00),
(null,'Festina Chrono Bike 2021 F20549/1',3600.00),
(null,'Festina Chrono Bike 2021 F20458/1',3600.00),
(null,'Festina Chrono Bike 2021 F20457/1',3600.00),
(null,'Festina Chrono Bike 2021 F20545/1',3600.00),
(null,'Festina Chrono Bike Special Edition F20203/1',4420.00);

insert into proizvod(sifra,naziv,cijena)
values
(null,'Festina Chrono Dual Time F20442/1',2710.00),
(null,'Festina Chrono Dual Time F20481/1',2710.00),
(null,'Festina Chrono Dual Time F20443/1',2710.00),
(null,'Festina Automatico F20536/4',2250.00),
(null, 'Festina Automatico F20536/3',2250.00),
(null,'Festina Automatico F20536/1',2250.00);

insert into kupac(ime,prezime,brojtelefona,email,ulicaikucnibroj,mjesto,postanskibroj)
values
('Ivan','Pavičić','0954500521','ivan.pavicic@gmail.com','Alojzija Stepinca 42','Osijek',31000),
('Danijel','Majer','0954478649','danijel.majer@gmail.com','Ružina ulica 67','Osijek',31000);


















    
