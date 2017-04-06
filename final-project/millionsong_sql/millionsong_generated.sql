create schema millionsong;
set_search_path=millionsong;

create table Artist_Mbtag(
   artist_id varchar(20),
   mbtag varchar(10)
);

create table Artist_Term(
   artist_id varchar(20),
   term varchar(10)
);

create table Similar_Artists(
   target varchar(20),
   similar varchar(20)
);

create table Songs_Popularity(
   userid varchar(40),
   song varchar(20),
   play_count integer
);

create table Songs_Summary(
   track_id varchar(20),
   title varchar(20),
   song_id varchar(20),
   release varchar(20),
   artist_id varchar(20),
   artist_mbid varchar(40),
   artist_name decimal(7,3),
   duration decimal(9,3),
   artist_familiarity decimal(14,3),
   artist_hotttnesss decimal(14,3),
   year integer
);
