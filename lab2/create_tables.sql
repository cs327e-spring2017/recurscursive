/*
CREATE TABLE <table name> ( 
        <attribute name 1> <data type 1>,
        ...
        <attribute name n> <data type n>);
*/

CREATE TABLE Actors (  /*types not yet corrected*/
    id_actors integer,
    l_name text, /*for now, check this data type*/
    f_name text, /*for now, check this data type*/
    m_name text, /*for now, check this data type*/
    gender integer, 
    id_genres integer
);

CREATE TABLE Aka_names ( /*types not yet corrected*/
    id_aka_names integer,
    id_actors integer,
    name text /*for now, check this data type*/
);

CREATE TABLE Genres ( /*types not yet corrected*/
    id_genres integer,
    genres text /*for now, check this data type*/
);

CREATE TABLE Aka_titles ( /*types not yet corrected*/
    id_aka_titles integer,
    id_movies text, /*for now, check this data type*/
    title numeric,
    location text, /*for now, check this data type*/
    year integer
);

CREATE TABLE Cast ( /*types not yet corrected*/
    id_cast integer,
    id_movies text, /*for now, check this data type*/
    id_series numeric,
    id_actors integer,
    character text, /*for now, check this data type*/
    billing_position integer
);

CREATE TABLE Cast_group ( /*types not yet corrected*/
    id_actors integer,
    id_cast text /*for now, check this data type*/
);

CREATE TABLE Keywords ( /*types not yet corrected*/
    id_keywords integer,
    keyword text /*for now, check this data type*/
);

CREATE TABLE Movies ( /*types not yet corrected*/
    id_movies integer,
    titles text, /*for now, check this data type*/
    year integer,
    id_genres integer
);

CREATE TABLE Movies_genres ( /*types not yet corrected*/
    id_movies_genres integer,
    id_movies integer,
    id_genres integer,
    id_series integer
);

CREATE TABLE Movies_keywords ( /*types not yet corrected*/
    id_movies_keywords integer,
    id_movies integer,
    id_keywords integer
);

CREATE TABLE Movies_info ( /*types not yet corrected*/
    id_movies integer,
    id_movies_keywords text
);

CREATE TABLE Series ( /*types not yet corrected*/
    id_series integer,
    id_movies integer,
    name text,
    season integer,
    id_genres integer
);