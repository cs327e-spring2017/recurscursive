\c postgres;
\c imdb;

alter table Movies drop column location; /*Deleting empty columns*/

alter table Movies drop column language; /*Deleting empty columns*/

alter table Movies_Genres drop column idseries; /*Deleting empty columns*/

alter table Movies_Keywords drop column idseries; /*Deleting empty columns*/

alter table Actors alter column gender TYPE char(1);

alter table Movies alter column type TYPE char(3);

