create table Place(
   id integer,
   gid varchar(40),
   name varchar(20),
   type boolean,
   address varchar(0),
   area integer,
   coordinates varchar(10),
   comment varchar(0),
   edits_pending boolean,
   last_updated decimal(29,3),
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   ended varchar(10)
);