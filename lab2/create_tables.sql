\c postgres;
drop database if exists imdb;
create database imdb;
\c imdb;

CREATE TABLE Movies ( 
    idmovies varchar(50) primary key,
    titles varchar(500), 
    year char(4),
    number varchar(50), 
    type varchar(50),
    location varchar(50),
    language varchar(50)
);

CREATE TABLE Actors ( 
    idactors varchar(50) primary key,
    lname varchar(200),  
    fname varchar(100), 
    mname varchar(100), 
    gender varchar(30), 
    number varchar(50) 
);

CREATE TABLE Keywords ( 
    idkeywords varchar(50) primary key,
    keyword varchar(50) 
);

CREATE TABLE Genres (
    idgenres varchar(50) primary key,
    genre varchar(30)
);

CREATE TABLE Aka_names (
    idaka_names varchar(50) primary key,	
    idactors varchar(50) not null references Actors(idactors),
    name varchar(200) 
);

CREATE TABLE Aka_titles ( 
    idaka_titles varchar(50) primary key,
    idmovies varchar(50) not null references Movies(idmovies), 
    title varchar(200),
    location varchar(50),
    year char(4)
); 

CREATE TABLE Series ( 
    idseries varchar(50) primary key,
    idmovies varchar(50) not null references Movies(idmovies),
    name varchar(300),
    season varchar(50),
    number varchar(50)
);

CREATE TABLE Movies_genres (
    idmovies_genres varchar(50) primary key,
    idmovies varchar(50) not null references Movies(idmovies),
    idgenres varchar(50) not null references Genres(idgenres),
    idseries varchar(50) references Series(idseries)
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
    idseries varchar(50) references Series(idseries),
    idactors varchar(50) not null references Actors(idactors),
    character varchar(2000), 
    billing_position varchar(50)
);

