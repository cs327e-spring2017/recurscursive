create table Release(
   id integer,
   gid varchar(40),
   name varchar(20),
   artist_credit integer,
   release_group integer,
   status boolean,
   packaging boolean,
   language integer,
   script integer,
   barcode integer,
   comment varchar(0),
   edits_pending boolean,
   quality varchar(10),
   last_updated decimal(29,3)
);