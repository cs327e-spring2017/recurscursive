\c postgres;
drop database if exists imdb;
create database imdb;
\c imdb;

CREATE TABLE Actors ( 
    idactors varchar(50) primary key,
    lname varchar(30),  
    fname varchar(30), 
    mname varchar(30), 
    gender varchar(30), 
    number varchar(50) 
);

CREATE TABLE Aka_names (
    idaka_names varchar(50) primary key,	
    idactors varchar(50) not null references Actors(idactors),
    name varchar(50) 
);

CREATE TABLE Genres (
    idgenres varchar(50) primary key,
    genre varchar(30)
);

CREATE TABLE Movies ( 
    idmovies varchar(50) primary key,
    titles varchar(100), 
    year char(4),
    number varchar(50), 
    type varchar(50),
    location varchar(50),
    language varchar(50)
);

CREATE TABLE Aka_titles ( 
    idaka_titles varchar(50) primary key,
    idmovies varchar(50) not null references Movies(idmovies), 
    title varchar(50),
    location varchar(50),
    year char(4)
); 

CREATE TABLE Series ( 
    idseries varchar(50) primary key,
    idmovies varchar(50) not null references Movies(idmovies),
    name varchar(100),
    season varchar(50),
    number varchar(50)
);

CREATE TABLE Movies_genres (
    idmovies_genres varchar(50) primary key,
    idmovies varchar(50) not null references Movies(idmovies),
    idgenres varchar(50) not null references Genres(idgenres),
    idseries varchar(50) not null references Series(idseries)
);

CREATE TABLE Keywords ( 
    idkeywords varchar(50) primary key,
    keyword varchar(50) 
);


CREATE TABLE Movies_keywords (
    idmovies_keywords varchar(50) primary key,
    idmovies varchar(50) not null references Movies(idmovies),
    idkeywords varchar(50) not null references Keywords(idkeywords),
    idseries varchar(50)
);

CREATE TABLE Movies_info (
    idmovies_info varchar(50) primary key,
    idmovies varchar(50) not null references Movies(idmovies),
    idmovies_keywords varchar(50) not null references Movies_keywords(idmovies_keywords) 
);

CREATE TABLE Cast_ ( 
    idcast varchar(50) primary key,
    idmovies varchar(50) not null references Movies(idmovies), 
    idseries varchar(50) not null references Series(idseries),
    idactors varchar(50) not null references Actors(idactors),
    character varchar(100), 
    billing_position varchar(50)
);
