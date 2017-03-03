\c postgres;
\c imdb;

/*ALTER TABLE the_table ALTER COLUMN col_name TYPE integer USING (col_name::integer);*/

ALTER TABLE Movies ALTER COLUMN idmovies TYPE integer USING (col_name::integer);