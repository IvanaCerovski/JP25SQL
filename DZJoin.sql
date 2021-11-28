#nazivi knjiga koje su izdali neaktivni izdava?i
# 6
select a.naslov
from katalog a inner join izdavac b on a.izdavac=b.sifra
where b.aktivan is null;

# izvucite sve autore koji u svojim naslovima 
# knjiga nemaju slovo B
#509 - ponavljaju se autori
select b.ime, b.prezime
from katalog a inner join autor b on a.autor=b.sifra
where a.naslov not like '%b%';

#izuvcite sve aktivne izdava?e koji su izdali knjige u Zagrebu
#0
select b.naziv
from katalog a inner join izdavac b on a.izdavac=b.sifra
inner join mjesto c on a.mjesto=c.sifra
where c.postanskibroj=10000 and aktivan=1;

#sakila baza
#nazivi zemalja ?iji gradovi nemaju definiranu adresu
#dupli rez
select b.country
from city a inner join country b on a.country_id=b.country_id
inner join address c on c.city_id=a.city_id
where c.address2 is null;

select distinct b.country
from city a inner join country b on a.country_id=b.country_id
inner join address c on c.city_id=a.city_id
where c.address2 is null;




