drop schema if exists musicbrainz cascade;
create schema musicbrainz;
set search_path=musicbrainz;

create table Area(
   id integer,
   gid varchar(400),
   name varchar(1000),
   type integer,
   edits_pending integer,
   last_updated timestamp,
   begin_date_year smallint,
   begin_date_month smallint,
   begin_date_day smallint,
   end_date_year smallint,
   end_date_month smallint,
   end_date_day smallint,
   ended boolean,
   comment varchar(1000)
);

create table Area_Type(
   id integer,
   name varchar(1000),
   parent varchar(1000),
   child_order integer,
   description text,
   gid varchar(400)
);

create table Artist(
   id integer,
   gid varchar(400),
   name varchar(2000),
   sort_name varchar(1000),
   begin_date_year smallint,
   begin_date_month smallint,
   begin_date_day smallint,
   end_date_year smallint,
   end_date_month smallint,
   end_date_day smallint,
   type integer,
   area integer,
   gender integer,
   comment varchar(1000),
   edits_pending integer,
   last_updated varchar(100),
   ended varchar(1000),
   begin_area integer,
   end_area integer
);

create table Artist_Credit(
   id integer,
   name varchar(2000),
   artist_count integer,
   ref_count integer,
   created timestamp
);

create table Artist_Credit_Name(
   artist_credit integer,
   position smallint,
   artist integer,
   name varchar(5000),
   join_phrase text
);

create table Artist_Type(
   id integer,
   name varchar(2000),
   parent integer,
   child_order integer,
   description varchar(4000),
   gid varchar(400)
);

create table Gender(
   id integer,
   name varchar(2000),
   parent integer,
   child_order integer,
   description text,
   gid varchar(400)
);

create table Label(
   id integer,
   gid varchar(400),
   name varchar(2000),
   begin_date_year smallint,
   begin_date_month smallint,
   begin_date_day smallint,
   end_date_year smallint,
   end_date_month smallint,
   end_date_day smallint,
   label_code integer,
   type integer,
   area integer,
   comment varchar(1000),
   edits_pending integer,
   last_updated timestamp,
   ended boolean
);

create table Language(
   id integer,
   iso_code_2t varchar(10),
   iso_code_2b varchar(10),
   iso_code_1 varchar(10),
   name varchar(1000),
   frequency integer,
   iso_code_3 varchar(10)
);

create table Medium(
   id integer,
   release integer,
   position integer,
   format integer,
   name varchar(2000),
   edits_pending integer,
   last_updated timestamp,
   track_count integer
);

create table Medium_Format(
   id integer,
   name varchar(200),
   parent integer,
   child_order integer,
   year smallint,
   has_discids varchar(10),
   description varchar(1000),
   gid varchar(40)
);

create table Place(
   id integer,
   gid varchar(400),
   name varchar(2000),
   type integer,
   address varchar(1000),
   area integer,
   coordinates varchar(1000),
   comment varchar(1000),
   edits_pending integer,
   last_updated timestamp,
   begin_date_year smallint,
   begin_date_month smallint,
   begin_date_day smallint,
   end_date_year smallint,
   end_date_month smallint,
   end_date_day smallint,
   ended boolean
);

create table Place_Type(
   id integer,
   name varchar(2000),
   parent integer,
   child_order integer,
   description text,
   gid varchar(400)
);

create table Recording(
   id integer,
   gid varchar(400),
   name varchar(4000),
   artist_credit integer,
   length integer,
   comment varchar(1000),
   edits_pending integer,
   last_updated varchar(1000),
   video varchar(1000)
);


create table Release(
   id integer,
   gid varchar(400),
   name varchar(2000),
   artist_credit integer,
   release_group integer,
   status integer,
   packaging integer,
   language integer,
   script integer,
   barcode varchar(500),
   comment varchar(1000),
   edits_pending integer,
   quality smallint,
   last_updated timestamp
);

create table Release_Packaging(
   id integer,
   name varchar(1000),
   parent integer,
   child_order integer,
   description varchar(600),
   gid varchar(400)
);

create table Release_Status(
   id integer,
   name varchar(2000),
   parent integer,
   child_order integer,
   description text,
   gid varchar(400)
);

create table Release_Unknown_Country(
   release integer,
   date_year integer,
   date_month integer,
   date_day integer
);

create table Work(
   id integer,
   gid varchar(400),
   name varchar(2000),
   type integer,
   comment varchar(1000),
   edits_pending integer,
   last_updated timestamp,
   language integer
);


create table Work_Type(
   id integer,
   name varchar(2000),
   parent integer,
   child_order integer,
   description text,
   gid varchar(400)
);

