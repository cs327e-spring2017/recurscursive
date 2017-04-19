/*
drop schema if exists unified cascade;
create schema unified;

set search_path = unified;


create table unified.MB_Area as select id, name, type
from musicbrainz.Area;

create table unified.MB_Area_Type as select id, name 
from musicbrainz.Area_Type;

create table unified.MB_Artist as select id, type, area
from musicbrainz.Artist;

create table unified.MB_Artist_Credit as select id, ref_count, name
from musicbrainz.Artist_Credit;

create table unified.MB_Artist_Credit_Name as select artist_credit, artist, name 
from musicbrainz.Artist_Credit_Name;

create table unified.MB_Artist_Type as select id, name
from musicbrainz.Artist_Type;

create table unified.MB_Gender as select id, name
from musicbrainz.Gender;

create table unified.MB_Label as select id, cname as
name from musicbrainz.Label;

create table unified.MB_Language as select id, name 
from musicbrainz.Language;

create table unified.MB_Medium as select id, format, track_count
from musicbrainz.Medium;

create table unified.MB_Medium_Format as select id, name, year 
from musicbrainz.Medium_Format;

create table unified.MB_Place as select id, type, area
from musicbrainz.Place;

create table unified.MB_Place_Type as select id, name
from musicbrainz.Place_Type;

create table unified.MB_Recording as select id, artist_credit, cname as
name from musicbrainz.Recording;

create table unified.MB_Release as select id, packaging, status
from musicbrainz.Release;

create table unified.MB_Release_Packaging as select id, name 
from musicbrainz.Release_Packaging;

create table unified.MB_Release_Status as select id, name
from musicbrainz.Release_Status;

create table unified.MB_Release_Unknown_Country as select release 
from musicbrainz.Release_Unknown_Country;





create table unified.D_Artists as select tist_id, name, realname 
from discog.Artists;

create table unified.D_Genres as select genre_id, name
from discog.Genres;

create table unified.D_Labels as select label_id, cname as
name from discog.Labels;

create table unified.D_Releases as select release_id, ctitle as title, num_tracks, released, country
from discog.Releases;

create table unified.D_Releases_Artists as select release_id, artist_id
from discog.Releases_Artists;

create table unified.D_Releases_Genres as select release_id, genre_id
from discog.Releases_Genres;

create table unified.D_Releases_Labels as select release_id, label_id
from discog.Releases_Labels;




create table unified.MS_Artist_Mbtag as select artist_id, mbtag
from millionsong.Artist_Mbtag;

create table unified.MS_Artist_Term as select artist_id, term
from millionsong.Artist_term;

create table unified.MS_Similar_Artists as select target, similar_
from millionsong.Similar_Artists;

create table unified.MS_Songs_Popularity as select userid, song, play_count 
from millionsong.Songs_Popularity;

create table unified.MS_Songs_Summary as select track_id, ctitle as title, song_id, year
from millionsong.Songs_Summary;
*/

--1
create or replace view v_artist_credits_from_recordings as SELECT MB_Artist_Credit_Name.name 
FROM MB_Recording 
JOIN MB_Artist_Credit 
ON (MB_Recording.id = MB_Artist_Credit.id) 
JOIN MB_Artist_Credit_Name 
ON (MB_Artist_Credit_Name.artist_credit = MB_Artist_Credit.id)
GROUP BY MB_Artist_Credit_Name.name
ORDER BY COUNT(ref_count) DESC LIMIT 1;


--2
create or replace view v_digipak_releases as SELECT COUNT(MB_Release.id)
FROM MB_Release 
JOIN MB_Release_Packaging ON (MB_Release_Packaging.id = MB_Release.packaging) 
JOIN MB_Release_Status ON (MB_Release_Status.id = MB_Release.status) 
WHERE MB_Release_Packaging.name = 'Digipak' AND MB_Release_Status.name = 'Official';



--3
create or replace view v_cassette_format as SELECT COUNT(MB_Medium.id) 
FROM MB_Medium
JOIN MB_Medium_Format ON (MB_Medium_Format.id = MB_Medium.format)
WHERE MB_Medium_Format.year = 1964 AND MB_Medium_Format.name = 'Cassette';



--4
create or replace view v_albums_released as SELECT COUNT(D_Releases.release_id)
FROM D_Releases
JOIN D_Releases_Artists ON (D_Releases_Artists.release_id = D_Releases.release_id)
JOIN D_Artists ON (D_Releases_Artists.artist_id = D_Artists.tist_id)
GROUP BY D_Releases.release_id
ORDER BY COUNT(D_Releases.num_tracks) DESC LIMIT 1; 



--5