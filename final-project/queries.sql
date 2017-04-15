set search_path = unified;
/*
SELECT MB_Artist_Credit_Name.name 
FROM MB_Recording 
JOIN MB_Artist_Credit 
ON (MB_Recording.id = MB_Artist_Credit.id) 
JOIN MB_Artist_Credit_Name 
ON (MB_Artist_Credit_Name.artist_credit = MB_Artist_Credit.id)
GROUP BY MB_Artist_Credit_Name.name
ORDER BY COUNT(ref_count) DESC LIMIT 1; 

SELECT COUNT(MB_Release.id)
FROM MB_Release 
JOIN MB_Release_Packaging ON (MB_Release_Packaging.id = MB_Release.packaging) 
JOIN MB_Release_Status ON (MB_Release_Status.id = MB_Release.status) 
WHERE MB_Release_Packaging.name = 'Digipak' AND MB_Release_Status.name = 'Official'; */

SELECT COUNT(MB_Medium.id)
FROM MB_Medium
JOIN MB_Medium_Format ON (MB_Medium_Format.id = MB_Medium.format)
WHERE MB_Medium_Format.year = 1964 AND MB_Medium_Format.name = 'Cassette';

SELECT COUNT(D_Releases.release_id)
FROM D_Releases
JOIN D_Releases_Artists ON (D_Releases_Artists.release_id = D_Releases.release_id)
JOIN D_Artists ON (D_Releases_Artists.artist_id = D_Artists.tist_id)
GROUP BY D_Releases.release_id
ORDER BY COUNT(D_Releases.num_tracks) DESC LIMIT 1;

SELECT COUNT(MB_Release.id)
FROM MB_Release
JOIN MB_Release_Unknown_Country ON (MB_Release_Unknown_Country.release = MB_Release.id)
GROUP BY MB_Release_Unknown_Country HAVING MB_Release