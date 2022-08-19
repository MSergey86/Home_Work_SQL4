CREATE table if not exists Genre (
    id SERIAL primary key,
    name VARCHAR(60) unique not null
);

CREATE table if not exists Artist (
    id SERIAL primary key,
    name VARCHAR(60) unique not NULL
);

CREATE table if not exists Genre_Artist (
    Genre_id INTEGER references Genre(id),
    Artist_id INTEGER references Artist(id),
    CONSTRAINT pk primary key (Genre_id, Artist_id)
);

CREATE table if not exists Album (
    id SERIAL primary key,
    name VARCHAR(60) not null,
    year INTEGER not null
    check(year >= 1900 and year <= 3000)
);

CREATE table if not exists Artist_Album (
    Artist_id INTEGER references Artist(id),
    Album_id INTEGER references Album(id),
    CONSTRAINT pk_aa primary key (Artist_id, Album_id)
);

CREATE table if not exists Track (
    id SERIAL primary key,
    name VARCHAR(60) not null,
    duration INTEGER not null
    check(duration between 15 and 3600),
    album_id INTEGER not null references Album(id)
);

CREATE table if not exists Compilation (
    id SERIAL primary key,
    name VARCHAR(60) not null,
    year INTEGER not null
    check(year >= 1900 and year <= 3000)
);

CREATE table if not exists Track_Compilation (
    Track_id INTEGER references Track(id),
    Compilation_id INTEGER references Compilation(id),
    CONSTRAINT pk_tc primary key (Track_id, Compilation_id)
);

