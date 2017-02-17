\c postgres;
\c imdb;

UPDATE Actors SET gender = 'M' WHERE gender = '1';

UPDATE Actors SET gender = 'F' WHERE gender IS NULL;

UPDATE Movies SET type = 'V' WHERE type = '1';

UPDATE Movies SET type = 'VG' WHERE type = '2';

UPDATE Movies SET type = 'FF' WHERE type = '3';

UPDATE Movies SET type = 'TVM' WHERE type IS NULL;

UPDATE Movies SET type = 'TVS' FROM Series WHERE Series.idmovies = Movies.idmovies; 
