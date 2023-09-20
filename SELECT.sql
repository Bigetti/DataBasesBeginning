-- Запросы для тестирования

--Домашнее задание к лекции «Продвинутая выборка данных»

-- Задание 2

select trackName, trackDuration
from public.tracks
order by trackduration desc 
limit 1;

select trackName
from public.tracks
where trackduration >= 210;

update public.compilation 
set compilationyear = 2019
where compilationid = 4;


select  compilationName
from public.Compilation
where compilationyear between 2018 and 2020;

select artistname
from public.artist a 
where artistname not like '% %';

select trackName
from public.tracks t 
where trackname like '%мой%' or trackname ilike '%MY%' or trackname ilike '%sunnyday%';






--задание 3

select Z.zhanrname, count(AG.artistid) as "Количество сполнителей"
from public.zhanr z 
left join public.artistsGenres AG on Z.zhanrid = AG.zhanrID  
group by Z.zhanrName; 


select count(*) as "Количество треков"
from public.tracks t 
inner join public.album a on T.trackalbumid = A.albumid 
where a.albumyear between 2019 and 2020;


select a.albumName, avg(T.trackDuration) as "Средняя продолжительность (сек)"
from public.tracks t 
inner join public.album a on t.trackalbumid = a.albumid 
group by a.albumname;


select distinct ar.artistName
from public.artist ar 
left join public.artistalbums aa on ar.artistid = aa.artistid
left join public.album a on aa.albumid = a.albumid 
where a.albumyear <> 2020 or a.albumyear is null;


select c.compilationname
from public.compilation c
inner join public.compilationtracks ct on c.compilationid = ct.compilationid 
inner join public.tracks t on ct.trackid = t.trackid 
inner join public.artistalbums aa on t.trackalbumid = aa.albumid 
inner join public.artist ar on aa.artistid = ar.artistid 
where ar.artistName = 'Aerosmith';