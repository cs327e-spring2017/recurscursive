set search_path = unified;

-- Time: 2584.113 ms
create or replace view v_artist_features_1 as 
SELECT MB_Artist_Credit_Name.name, COUNT(MB_Artist_Credit.ref_count)
FROM MB_Recording 
JOIN MB_Artist_Credit 
ON (MB_Recording.id = MB_Artist_Credit.id) 
JOIN MB_Artist_Credit_Name 
ON (MB_Artist_Credit_Name.artist_credit = MB_Artist_Credit.id)
GROUP BY MB_Artist_Credit_Name.name, MB_Artist_Credit.ref_count
ORDER BY COUNT(MB_Artist_Credit.ref_count) DESC LIMIT 5;


-- Time: 183.416 ms
create or replace view v_type_of_rpackaging_2 as 
SELECT MB_Release_Packaging.name as packaging, COUNT(MB_Release.id)
FROM MB_Release 
JOIN MB_Release_Packaging ON (MB_Release_Packaging.id = MB_Release.packaging) 
JOIN MB_Release_Status ON (MB_Release_Status.id = MB_Release.status)
WHERE  MB_Release_Status.name = 'Official' and  MB_Release_Packaging.name != 'None'
GROUP BY MB_Release_Packaging.name
ORDER BY COUNT(MB_Release.id) DESC;

-- Time: 158.538 ms
create or replace view v_formats_3 as 
SELECT MB_Medium_Format.name as format, COUNT(MB_Medium.id)
FROM MB_Medium
JOIN MB_Medium_Format ON (MB_Medium_Format.id = MB_Medium.format)
GROUP BY MB_Medium_Format.name
ORDER BY COUNT(MB_Medium.id) DESC limit 20;

-- Time: 1659.737 ms
create or replace view v_artist_releases_4 as 
SELECT D_Artists.name, COUNT(D_Releases.release_id)
FROM D_Releases
JOIN D_Releases_Artists ON (D_Releases_Artists.release_id = D_Releases.release_id)
JOIN D_Artists ON (D_Releases_Artists.artist_id = D_Artists.tist_id)
GROUP BY D_Artists.name
ORDER BY COUNT(D_Releases.num_tracks) DESC LIMIT 5; 

-- Time: 632.831 ms
create or replace view v_area_stalker_5 as 
SELECT MB_Area.name, COUNT(MB_Area.name)
FROM MB_Area
JOIN MB_Label ON (MB_Area.id = MB_Label.area) 
JOIN D_Labels ON (MB_Label.name = D_Labels.name)
JOIN D_Releases_Labels ON (D_Labels.label_id = D_Releases_Labels.label_id)
JOIN D_Releases ON (D_Releases_Labels.release_id = D_Releases.release_id)
WHERE D_Releases.title = 'Stalker'
GROUP BY MB_Area.name
ORDER BY COUNT(MB_Area.name) DESC;

-- Time: 273.063 ms
create or replace view v_recording_location_6 as 
SELECT MB_Place_Type.name, COUNT(MB_Artist.id)
FROM MB_Artist
JOIN MB_Artist_Type ON (MB_Artist.type = MB_Artist_Type.id)
JOIN MB_Area ON (MB_Artist.area = MB_Area.id)
JOIN MB_Place ON (MB_Place.area = MB_Area.id)
JOIN MB_Place_Type ON (MB_Place_Type.id = MB_Place.type)
GROUP BY MB_Place_Type.name
ORDER BY COUNT(MB_Artist.id) DESC;

-- Time: 4046.305 ms
create or replace view v_play_count_hello_7 as 
SELECT MS_Songs_Summary.year, COUNT(MS_Songs_Popularity.play_count)
FROM MS_Songs_Popularity 
JOIN MS_Songs_Summary ON (MS_Songs_Summary.song_id = MS_Songs_Popularity.song)
where MS_Songs_Summary.title = 'Hello' AND MS_Songs_Summary.year != 0
GROUP BY MS_Songs_Summary.year
ORDER BY COUNT(MS_Songs_Popularity.play_count) DESC limit 10;

-- Time: 172.594 ms
create or replace view v_artist_term_8 as 
SELECT MS_Artist_Term.term as genre, COUNT(MS_Artist_Term.term)
FROM MS_Artist_Mbtag 
JOIN MS_Artist_Term ON (MS_Artist_Mbtag.artist_id = MS_Artist_Term.artist_id)
GROUP BY MS_Artist_Term.term
ORDER BY COUNT(MS_Artist_Term.term) DESC limit 20;

-- Time: 258.434 ms
create or replace view v_genres_9 as 
SELECT D_Genres.name, COUNT(D_Releases.release_id)
FROM D_Releases 
JOIN D_Releases_Genres ON (D_Releases.release_id = D_Releases_Genres.release_id)
JOIN D_Genres ON (D_Releases_Genres.genre_id = D_Genres.genre_id)
--WHERE D_Genres.name = 'Rock';
GROUP BY D_Genres.name
ORDER BY COUNT(D_Releases.release_id) DESC limit 10;

-- Time: 200.670 ms
create or replace view v_female_islands_10 as 
SELECT MB_Gender.name as gender, COUNT(MB_Artist.id)
FROM MB_Artist
JOIN MB_Gender ON (MB_Artist.gender = MB_Gender.id) 
JOIN MB_Area ON (MB_Artist.area = MB_Area.id)
JOIN MB_Area_Type ON (MB_Area.type = MB_Area_Type.id)
WHERE MB_Area_Type.name = 'Island' 
GROUP BY MB_Gender.name
ORDER BY COUNT(MB_Artist.id) DESC;