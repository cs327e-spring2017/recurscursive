set search_path = unified;

--1
SELECT MB_Artist_Credit_Name.name 
FROM MB_Recording 
JOIN MB_Artist_Credit 
ON (MB_Recording.id = MB_Artist_Credit.id) 
JOIN MB_Artist_Credit_Name 
ON (MB_Artist_Credit_Name.artist_credit = MB_Artist_Credit.id)
GROUP BY MB_Artist_Credit_Name.name
ORDER BY COUNT(ref_count) DESC LIMIT 1; 

--2
SELECT COUNT(MB_Release.id)
FROM MB_Release 
JOIN MB_Release_Packaging ON (MB_Release_Packaging.id = MB_Release.packaging) 
JOIN MB_Release_Status ON (MB_Release_Status.id = MB_Release.status) 
WHERE MB_Release_Packaging.name = 'Digipak' AND MB_Release_Status.name = 'Official'; */

--3
SELECT COUNT(MB_Medium.id)
FROM MB_Medium
JOIN MB_Medium_Format ON (MB_Medium_Format.id = MB_Medium.format)
WHERE MB_Medium_Format.year = 1964 AND MB_Medium_Format.name = 'Cassette';

--4
SELECT COUNT(D_Releases.release_id)
FROM D_Releases
JOIN D_Releases_Artists ON (D_Releases_Artists.release_id = D_Releases.release_id)
JOIN D_Artists ON (D_Releases_Artists.artist_id = D_Artists.tist_id)
GROUP BY D_Releases.release_id
ORDER BY COUNT(D_Releases.num_tracks) DESC LIMIT 1;

--5
SELECT MB_Area.name
FROM MB_Area
JOIN MB_Label ON (MB_Area = MB_Label) <- need an attribute
JOIN D_Labels ON (MB_Label.name = D_Labels.name)
JOIN D_Releases_Labels ON (D_Labels.label_id = D_Releases_Labels.label_id)
JOIN D_Releases ON (D_Releases_Labels.release_id = D_Releases.release_id)
Where D_Releases.title = "Moonchildren EP"

--6
SELECT COUNT(MB_Release.id)
FROM MB_Release
JOIN MB_Release_Unknown_Country ON (MB_Release_Unknown_Country.release = MB_Release.id)
GROUP BY MB_Release_Unknown_Country HAVING MB_Release


--7
SELECT COUNT(MB_Artist.id)
FROM MB_Artist
JOIN MB_Artist_Type ON (MB_Artist.type = MB_Artist_Type.id)
JOIN MB_Area ON (MB_Artist.area = MB_Area.id)
JOIN MB_Area_Type ON (MB_Area.type = MB_Area_Type.id)
WHERE MB_Area_Type.name = "Studio" AND MB_Artist_Type.name = "orchestrial"

--8
SELECT COUNT(play_count)
FROM MS_Songs_Popularity 
JOIN MS_Songs_Summary ON (MS_Songs_Summary.song_id = MS_Songs_Popularity.song)
where MS_Songs_Summary.year = 2005

--9
SELECT MS_Artist_Mbtag.mbtag, MS_Artist_Term.term
FROM MS_Artist_Mbtag 
JOIN MS_Artist_Term ON (MS_Artist_Mbtag.artist_id = MS_Artist_Term.artist_id)
WHERE MS_Artist_Mbtag.artist_id = 111222333

--10
SELECT COUNT(D_Releases.release_id)
FROM D_Releases 
JOIN D_Releases_Genres ON (D_Releases.release_id = D_Releases_Genres.release_id)
JOIN D_Genres ON (D_Releases_Genres.genre_id = D_Genres.genre_id)

--11
SELECT COUNT(MB_Artist.id)
FROM MB_Artist
JOIN MB_Gender ON (MB_Artist = MB_Gender) <- needs attributes
JOIN MB_Area ON (MB_Artist.area = MB_Area.id)
JOIN MB_Area_Type ON (MB_Area.type = MB_Area_Type.id)
WHERE MB_Gender.name = "Female" AND MB_Area_Type.name = "island"

12) In what year was a given song released?
--Maybe change to the most popular song in a given year?
SELECT MS_Songs_Summary.year
FROM MS_Songs_Summary 
JOIN MB_Recording ON (MB_Recording.name = MS_Songs_Summary.title)
WHERE MB_Recording.name = "Soar"
