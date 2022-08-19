
------------1-----------------

select count(artist_id), genre_id 
from genre_artist ga 
group by genre_id 
order by genre_id;

------------2------------------

select count(*)
from track as t 
join album as a on a.id = t.album_id 
where year between 2019 and 2020;

------------3----------------

select avg(duration), a.name
from track t
join album a on a.id = t.album_id
group by a.name
order by avg(duration)
;
------------4------------------

select distinct a.name 
from artist_album as aa
    join artist as a on a.id = aa.artist_id 
    join album as a2 on aa.album_id = a2.id
where a2."year" != 2020
;
------------5--------------------

select distinct c.name
from compilation as c
    join track_compilation as tc on tc.compilation_id  = c.id 
    join track as t on t.id = tc.track_id 
    join artist_album as aa on aa.album_id = t.album_id 
    join artist as a on a.id = aa.artist_id 
where a.name = 'Slipknot'
;
------------6---------------

select a.name 
from album as a
    join artist_album as aa 
    on aa.album_id = a.id 
    join artist as ar 
    on ar.id = aa.artist_id 
    join genre_artist as ga 
    on ga.artist_id = ar.id  
group by a.name  
having count(ar.id) > 1
;

------------7-------------------
select t.name
from track as t 
    left join track_compilation as tc
    on tc.track_id = t.id  
where tc.compilation_id is null
;

------------8------------------
select a.name
from artist as a 
    join artist_album as aa 
    on aa.artist_id = a.id 
    join track as t 
    on t.album_id = aa.album_id 
where t.duration =   
  (select min(t2.duration)
  from track as t2
  )
;

------------9------------------------
select name
from album a 
join (select count(album_id), album_id 
from track
group by album_id  
having  count(album_id) =   
(select count(album_id)
from track t
group by album_id
order by count(album_id) 
limit 1)) as album_min_track
on a.id =  album_min_track.album_id
;
