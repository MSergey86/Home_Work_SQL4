
insert into artist (name)
values ('Slipknot');
insert into artist (name)
values ('Korn');
insert into artist (name)
values ('Metallica');
insert into artist (name)
values ('The Offspring');
insert into artist (name)
values ('Green day');
insert into artist (name)
values ('Limp bizkit');
insert into artist (name)
values ('White stripes');
insert into artist (name)
values ('The kills');

insert into genre (name)
values ('Nu-metal');
insert into genre (name)
values ('Rock');
insert into genre (name)
values ('Rapcore');
insert into genre (name)
values ('Metal');
insert into genre (name)
values ('Punk rock');
   
insert into album (name, year)
values ('Slipknot', 1999);
insert into album (name, year)
values ('Korn', 1994);
insert into album (name, year)
values ('Metallica', 1991);
insert into album (name, year)
values ('Americana', 1998);
insert into album (name, year)
values ('American Idiot', 2004);
insert into album (name, year)
values ('Significant Other', 1999);
insert into album (name, year)
values ('Elephant', 2020);
insert into album (name, year)
values ('Blood Pressures', 2019);

insert into track (name, duration, album_id)
values ('Wait and Bleed', 147, 1);
insert into track (name, duration, album_id)
values ('Spit it Out', 159, 1);
insert into track (name, duration, album_id)
values ('Blind', 258, 2);
insert into track (name, duration, album_id)
values ('Ball Tonque', 269, 2);
insert into track (name, duration, album_id)
values ('The Unforgiven', 386, 3);
insert into track (name, duration, album_id)
values ('Nothing Else Matters', 387, 3);
insert into track (name, duration, album_id)
values ('Pretty Fly', 188, 4);
insert into track (name, duration, album_id)
values ('The Kids Arent Alright', 180, 4);
insert into track (name, duration, album_id)
values ('American Idiot', 174, 5);
insert into track (name, duration, album_id)
values ('Holiday', 232, 5);
insert into track (name, duration, album_id)
values ('Nookie', 289, 6);
insert into track (name, duration, album_id)
values ('Break Stuff', 167, 6);
insert into track (name, duration, album_id)
values ('My way', 167, 6);
insert into track (name, duration, album_id)
values ('Seven Nation Army', 231, 7);
insert into track (name, duration, album_id)
values ('Black Math', 183, 7);
insert into track (name, duration, album_id)
values ('Future Starts Slow', 245, 8);
insert into track (name, duration, album_id)
values ('Satellite', 254, 8);

insert into Compilation (name, year)
values ('The Best', 2012);
insert into Compilation (name, year)
values ('The best of the best', 2013);
insert into Compilation (name, year)
values ('Best guitar music', 2014);
insert into Compilation (name, year)
values ('Maximum', 2015);
insert into Compilation (name, year)
values ('My Choice', 2015);
insert into Compilation (name, year)
values ('Your Choice', 2012);
insert into Compilation (name, year)
values ('Best rock', 2013);
insert into Compilation (name, year)
values ('My Music', 2014);

insert into Genre_Artist(genre_id, artist_id)
values (1, 1);
insert into Genre_Artist(genre_id, artist_id)
values (4, 1);
insert into Genre_Artist(genre_id, artist_id)
values (1, 2);
insert into Genre_Artist(genre_id, artist_id)
values (4, 2);
insert into Genre_Artist(genre_id, artist_id)
values (4, 3);
insert into Genre_Artist(genre_id, artist_id)
values (5, 4);
insert into Genre_Artist(genre_id, artist_id)
values (2, 5);
insert into Genre_Artist(genre_id, artist_id)
values (5, 5);
insert into Genre_Artist(genre_id, artist_id)
values (1, 6);
insert into Genre_Artist(genre_id, artist_id)
values (3, 6);
insert into Genre_Artist(genre_id, artist_id)
values (2, 7);
insert into Genre_Artist(genre_id, artist_id)
values (2, 8);
