\c imdb;

\copy Movies from 'c:/Users/Elias/full/movies.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Actors from 'c:/Users/Elias/full/actors.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Keywords from 'c:/Users/Elias/full/keywords.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Genres from 'c:/Users/Elias/full/genres.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Aka_Names from 'c:/Users/Elias/full/aka_names.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Aka_Titles from 'c:/Users/Elias/full/aka_titles.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Series from 'c:/Users/Elias/full/series.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Movies_Genres from 'c:/Users/Elias/full/movies_genres.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Movies_Keywords from 'c:/Users/Elias/full/movies_keywords.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Cast_ from 'c:/Users/Elias/full/cast.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');