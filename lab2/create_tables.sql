\c postgres;
drop database if exists imdb;
create database imdb;
\c imdb;

CREATE TABLE Movies ( 
    idmovies integer primary key,
    titles varchar(500), 
    year integer,
    type integer,
    location varchar(50),
    language varchar(50)
);

CREATE TABLE Actors ( 
    idactors integer primary key,
    lname varchar(200),  
    fname varchar(100), 
    mname varchar(100), 
    gender integer, 
);

CREATE TABLE Keywords ( 
    idkeywords integer primary key,
    keyword varchar(50) 
);

CREATE TABLE Genres (
    idgenres integer primary key,
    genre varchar(30)
);

CREATE TABLE Aka_Names (
    idaka_names integer primary key,	
    idactors integer not null references Actors(idactors),
    name varchar(200) 
);

CREATE TABLE Aka_Titles ( 
    idaka_titles integer primary key,
    idmovies integer not null references Movies(idmovies), 
    title varchar(200),
    location varchar(50),
    year integer
); 

CREATE TABLE Series ( 
    idseries integer primary key,
    idmovies integer not null references Movies(idmovies),
    name varchar(300),
    season varchar(50),
    number varchar(50)
);

CREATE TABLE Movies_Genres (
    idmovies_genres integer primary key,
    idmovies integer not null references Movies(idmovies),
    idgenres integer not null references Genres(idgenres),
    idseries integer references Series(idseries)
);


CREATE TABLE Movies_Keywords (
    idmovies_keywords integer primary key,
    idmovies integer not null references Movies(idmovies),
    idkeywords integer not null references Keywords(idkeywords),
    idseries integer 
);


CREATE TABLE Cast_ ( 
    idcast integer primary key,
    idmovies integer not null references Movies(idmovies), 
    idactors integer not null references Actors(idactors),
    character varchar(2000), 
    billing_position varchar(50)
);

