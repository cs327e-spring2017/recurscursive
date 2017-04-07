drop schema if exists discog cascade;
create schema discog;
set search_path = discog;

create table Artists(
   tist_id integer,
   name varchar(1000),
   realname varchar(1000)
);

create table Genres(
   genre_id integer,
   name varchar(20)
);

create table Labels(
   label_id integer,
   name varchar(1000)
);

create table Releases(
   release_id integer,
   title varchar(1000),
   num_tracks integer,
   released varchar(1000),
   country varchar(1000)
);

create table Releases_Artists(
   release_id integer,
   artist_id integer
);

create table Releases_Genres(
   release_id integer,
   genre_id smallint
);

create table Releases_Labels(
   release_id integer,
   label_id integer
);
