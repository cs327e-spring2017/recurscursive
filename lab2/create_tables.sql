\c postgres;
drop database if exists tickit;
create database imbd;
\c imbd;

CREATE TABLE Actors ( 
    id_actors integer primary key,
    lname varchar(30),  
    fname varchar(30), 
    mname varchar(30), 
    gender varchar(30), 
    number integer 
);

CREATE TABLE Aka_names (
    idaka_names integer primary key,	
    idactors integer not null references Actors(idactors),
    name varchar(50) 
);

CREATE TABLE Genres (
    idgenres integer primary key,
    genre varchar(30)
);

CREATE TABLE Movies ( 
    idmovies integer primary key,
    titles varchar(100), 
    year char(4),
    number integer, 
    type integer,
    location varchar(50),
    language varchar(50)
);

CREATE TABLE Aka_titles ( 
    idaka_titles integer primary key,
    idmovies integer not null references Movies(idmovies), 
    title varchar(50),
    location varchar(50),
    year char(4)
); 

CREATE TABLE Series ( 
    idseries integer primary key,
    idmovies integer not null references Movies(idmovies),
    name varchar(100),
    season integer,
    number integer
);

CREATE TABLE Movies_genres (
    idmovies_genres integer primary key,
    idmovies integer not null references Movies(idmovies),
    idgenres integer not null references Genres(idgenres),
    idseries integer not null references Series(idseries)
);

CREATE TABLE Keywords ( 
    idkeywords integer primary key,
    keyword varchar(50) 
);


CREATE TABLE Movies_keywords (
    idmovies_keywords integer primary key,
    idmovies integer not null references Movies(idmovies),
    idkeywords integer not null references Keywords(idkeywords),
    idseries integer
);

CREATE TABLE Movies_info (
    idmovies_info integer primary key,
    idmovies integer not null references Movies(idmovies),
    idmovies_keywords integer not null references Movies_keywords(idmovies_keywords) 
);

CREATE TABLE Cast_ ( 
    idcast integer primary key,
    idmovies integer not null references Movies(idmovies), 
    idseries integer not null references Series(idseries),
    idactors integer not null references Actors(idactors),
    character varchar(100), 
    billing_position integer
);

