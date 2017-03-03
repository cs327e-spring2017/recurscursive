SELECT MAX(season) FROM Series;

SELECT name FROM Series WHERE season = '99' ORDER BY name;

SELECT COUNT(idmovies) FROM Movies WHERE year = 2005;

SELECT COUNT(Movies_Genres.idmovies) FROM Movies_Genres INNER JOIN Movies ON (Movies_Genres.idmovies = Movies.idmovies) WHERE Movies_Genres.idgenres = 15;

SELECT title FROM Aka_Titles GROUP BY idaka_titles HAVING location = 'Germany';

SELECT lname FROM Actors GROUP BY idactors HAVING fname = 'Elias';

SELECT COUNT(Cast_.idcast) FROM Cast_ INNER JOIN Actors ON (Cast_.idactors = Actors.idactors) WHERE Actors.fname = 'Jennifer' AND Actors.lname = 'Aniston';

SELECT COUNT(Cast_.idmovies) FROM Cast_ INNER JOIN Movies_Genres ON (Cast_.idmovies = Movies_Genres.idmovies) WHERE Cast_.character = 'Rick';

SELECT COUNT(Actors.lname) FROM Actors LEFT OUTER JOIN Cast_ ON (Actors.idactors = Cast_.idactors) GROUP BY Actors.lname ORDER BY COUNT(Actors.lname) DESC LIMIT 10; 

SELECT Movies.year,COUNT(Movies.idmovies) FROM Movies INNER JOIN Movies_Genres ON (Movies.idmovies = Movies_Genres.idmovies) GROUP BY Movies.year ORDER BY COUNT(Movies.year) DESC LIMIT 10;