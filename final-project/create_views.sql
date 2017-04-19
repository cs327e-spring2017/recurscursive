set search_path = unified;

--1
create or replace view v_artist_credits_recordings as SELECT MB_Artist_Credit_Name.name 
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
create or replace view v_area_stalker_album as SELECT MB_Area.name
FROM MB_Area
JOIN MB_Label ON (MB_Area.id = MB_Label.area) 
JOIN D_Labels ON (MB_Label.name = D_Labels.name)
JOIN D_Releases_Labels ON (D_Labels.label_id = D_Releases_Labels.label_id)
JOIN D_Releases ON (D_Releases_Labels.release_id = D_Releases.release_id)
WHERE D_Releases.title = 'Stalker'; 



--6
create or replace view v_group_studio as SELECT COUNT(MB_Artist.id)
FROM MB_Artist
JOIN MB_Artist_Type ON (MB_Artist.type = MB_Artist_Type.id)
JOIN MB_Area ON (MB_Artist.area = MB_Area.id)
JOIN MB_Place ON (MB_Place.area = MB_Area.id)
JOIN MB_Place_Type ON (MB_Place_Type.id = MB_Place.type)
WHERE MB_Place_Type.name = 'Studio' AND MB_Artist_Type.name = 'Group';



--7
create or replace view v_play_count_year as SELECT COUNT(MS_Songs_Popularity.play_count)
FROM MS_Songs_Popularity 
JOIN MS_Songs_Summary ON (MS_Songs_Summary.song_id = MS_Songs_Popularity.song)
where MS_Songs_Summary.year = 1988 AND MS_Songs_Summary.title = 'Passion Protein';



--8
create or replace view v_artist_mbtag_term as SELECT MS_Artist_Mbtag.mbtag, MS_Artist_Term.term
FROM MS_Artist_Mbtag 
JOIN MS_Artist_Term ON (MS_Artist_Mbtag.artist_id = MS_Artist_Term.artist_id)
WHERE MS_Artist_Mbtag.artist_id = 'AR00P3M1187FB5428C';


--9
create or replace view v_us_rock as SELECT COUNT(D_Releases.release_id)
FROM D_Releases 
JOIN D_Releases_Genres ON (D_Releases.release_id = D_Releases_Genres.release_id)
JOIN D_Genres ON (D_Releases_Genres.genre_id = D_Genres.genre_id)
WHERE D_Genres.name = 'Rock';


--10
create or replace view v_female_islands as SELECT COUNT(MB_Artist.id)
FROM MB_Artist
JOIN MB_Gender ON (MB_Artist.gender = MB_Gender.id) 
JOIN MB_Area ON (MB_Artist.area = MB_Area.id)
JOIN MB_Area_Type ON (MB_Area.type = MB_Area_Type.id)
WHERE MB_Gender.name = 'Female' AND MB_Area_Type.name = 'Island';