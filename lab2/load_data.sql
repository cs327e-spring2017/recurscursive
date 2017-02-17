\c imdb;

\copy Movies from 'c:/Users/Elias/Downloads/full1/movies.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Actors from 'c:/Users/Elias/Downloads/full1/actors.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Keywords from 'c:/Users/Elias/Downloads/full1/keywords.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Genres from 'c:/Users/Elias/Downloads/full1/genres.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Aka_Names from 'c:/Users/Elias/Downloads/full1/aka_names.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Aka_Titles from 'c:/Users/Elias/Downloads/full1/aka_titles.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Series from 'c:/Users/Elias/Downloads/full1/series.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');
 
\copy Movies_Genres from 'c:/Users/Elias/Downloads/full1/movies_genres.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Movies_Keywords from 'c:/Users/Elias/Downloads/full1/movies_keywords.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');

\copy Cast_ from 'c:/Users/Elias/Downloads/full1/cast.csv' (header FALSE, format csv, delimiter ',', encoding 'UTF8');