\c postgres;
drop database if exists tickit;
create database imbd;
\c imbd;

CREATE TABLE Keywords (  /*---parent---*/
    id_keywords integer primary key,
    keyword varchar(50) 
);

CREATE TABLE Actors ( 
    id_actors integer primary key,
    l_name varchar(30),  
    f_name varchar(30), 
    m_name varchar(30), 
    gender integer, 
    id_genres integer
);

CREATE TABLE Aka_names ( /*types not yet corrected*/
    id_aka_names integer primary key,
    id_actors integer,
    name varchar(50) /*for now, check this data type*/
);

CREATE TABLE Genres ( /*types not yet corrected*/
    id_genres integer primary key,
    genres varchar(30) /*for now, check this data type*/
);

CREATE TABLE Aka_titles ( /*types not yet corrected*/
    id_aka_titles integer primary key,
    id_movies integer, 
    title varchar(50),
    location varchar(50), /*for now, check this data type*/
    year char(4)
); 

CREATE TABLE Cast ( /*types not yet corrected*/
    id_cast integer primary key,
    id_movies integer, /*for now, check this data type*/
    id_series integer,
    id_actors integer,
    character varchar(100), /*for now, check this data type*/
    billing_position integer
);


CREATE TABLE Movies ( /*types not yet corrected*/
    id_movies integer primary key,
    titles varchar(50), 
    year char(4),
    id_genres integer, /*name not yet corrected*/
    type integer,
    location varchar(50),
    language varchar(50)
);

CREATE TABLE Movies_genres ( /*types not yet corrected*/
    id_movies_genres integer primary key,
    id_movies integer,
    id_genres integer,
    id_series integer
);

CREATE TABLE Movies_keywords ( /*types not yet corrected*/
    id_movies_keywords integer primary key,
    id_movies integer,
    id_keywords integer
);

CREATE TABLE Movies_info ( /*types not yet corrected*/
    id_movies integer primary key,
    id_movies_keywords text
);

CREATE TABLE Series ( /*types not yet corrected*/
    id_series integer primary key,
    id_movies integer,
    name text,
    season integer,
    id_genres integer
);