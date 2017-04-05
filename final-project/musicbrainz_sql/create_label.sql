create table Label(
   id integer,
   gid varchar(40),
   name varchar(20),
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   label_code varchar(10),
   type varchar(10),
   area integer,
   comment varchar(0),
   edits_pending boolean,
   last_updated varchar(10),
   ended varchar(10)
);