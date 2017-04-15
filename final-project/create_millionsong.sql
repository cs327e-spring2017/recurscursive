drop schema if exists millionsong cascade;
create schema millionsong;
set search_path = millionsong;

create table Artist_Mbtag(
   artist_id varchar(200),
   mbtag varchar(1000)
);

create table Artist_Term(
   artist_id varchar(200),
   term varchar(1000)
);

create table Similar_Artists(
   target varchar(20),
   similar_ varchar(20)
);

create table Songs_Popularity(
   userid varchar(40),
   song varchar(20),
   play_count integer
);

create table Songs_Summary(
   track_id varchar(20),
   title varchar(2000),
   song_id varchar(200),
   release varchar(2000),
   artist_id varchar(200),
   artist_mbid varchar(400),
   artist_name varchar(1000),
   duration decimal(9,3),
   artist_familiarity decimal(14,3),
   artist_hotttnesss decimal(14,3),
   year integer
);

