create table Artists(
   tist_id integer,
   name varchar(10),
   realname varchar(20)
);

create table Genres(
   genre_id integer,
   name varchar(20)
);

create table Labels(
   label_id integer,
   name varchar(10)
);

create table Releases(
   release_id integer,
   title varchar(30),
   num_tracks integer,
   released varchar(10),
   country varchar(10)
);

create table Releases_Artists(
   release_id integer,
   artist_id integer
);

create table Releases_Genres(
   release_id integer,
   genre_id boolean
);

create table Releases_Labels(
   release_id integer,
   label_id integer
);