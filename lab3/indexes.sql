CREATE INDEX movie_title_idx ON Movies(titles);

CREATE INDEX name_idx ON Series(season);

CREATE INDEX idmovies_idx ON Movies(year);

CREATE INDEX movie_genre_idx ON Movies_Genres(idgenres);

CREATE INDEX location_idx ON Aka_Titles(location);

CREATE INDEX fname_idx ON Actors(fname);

CREATE INDEX actor_name_idx ON Actors(fname, lname);

CREATE INDEX char_name_idx ON Cast_(character);