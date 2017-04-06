drop schema if exists musicbrainz;
create schema musicbrainz;
set search_path=musicbrainz;

create table Area(
   id integer,
   gid varchar(40),
   name varchar(10),
   type boolean,
   edits_pending boolean,
   last_updated decimal(29,3),
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   ended varchar(10),
   comment varchar(1000)
);

create table Area_Type(
   id integer,
   name varchar(10),
   parent varchar(10),
   child_order integer,
   description decimal(38,1),
   gid varchar(40)
);

create table Artist(
   id integer,
   gid varchar(40),
   name varchar(20),
   sort_name varchar(20),
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   type integer,
   area varchar(10),
   gender varchar(10),
   comment varchar(1000),
   edits_pending boolean,
   last_updated varchar(10),
   ended varchar(10),
   begin_area varchar(10),
   end_area varchar(10)
);

create table Artist_Credit(
   id integer,
   name varchar(20),
   artist_count boolean,
   ref_count integer,
   created decimal(29,3)
);

create table Artist_Credit_Name(
   artist_credit integer,
   position boolean,
   artist integer,
   name varchar(10),
   join_phrase varchar(100)
);

create table Artist_Type(
   id integer,
   name varchar(10),
   parent varchar(10),
   child_order integer,
   description varchar(10),
   gid varchar(40)
);

create table Gender(
   id boolean,
   name varchar(10),
   parent varchar(10),
   child_order boolean,
   description varchar(10),
   gid varchar(40)
);

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
   comment varchar(1000),
   edits_pending boolean,
   last_updated varchar(10),
   ended varchar(10)
);

create table Language(
   id integer,
   iso_code_2t varchar(10),
   iso_code_2b varchar(10),
   iso_code_1 varchar(10),
   name varchar(10),
   frequency boolean,
   iso_code_3 varchar(10)
);

create table Medium(
   id integer,
   release integer,
   position boolean,
   format boolean,
   name decimal(32,0),
   edits_pending boolean,
   last_updated decimal(29,3),
   track_count integer
);

create table Medium_Format(
   id integer,
   name varchar(20),
   parent integer,
   child_order boolean,
   year integer,
   has_discids varchar(10),
   description varchar(10),
   gid varchar(40)
);

create table Place(
   id integer,
   gid varchar(40),
   name varchar(20),
   type boolean,
   address varchar(1000),
   area integer,
   coordinates varchar(10),
   comment varchar(1000),
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

create table Place_Type(
   id integer,
   name varchar(20),
   parent varchar(10),
   child_order integer,
   description decimal(173,0),
   gid varchar(40)
);

create table Recording(
   id integer,
   gid varchar(40),
   name varchar(40),
   artist_credit integer,
   length integer,
   comment varchar(1000),
   edits_pending boolean,
   last_updated varchar(10),
   video varchar(10)
);


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
   comment varchar(1000),
   edits_pending boolean,
   quality varchar(10),
   last_updated decimal(29,3)
);

create table Release_Packaging(
   id integer,
   name varchar(10),
   parent varchar(10),
   child_order boolean,
   description varchar(60),
   gid varchar(40)
);

create table Release_Status(
   id integer,
   name varchar(20),
   parent varchar(10),
   child_order integer,
   description decimal(199,0),
   gid varchar(40)
);

create table Release_Unknown_Country(
   release integer,
   date_year integer,
   date_month varchar(10),
   date_day varchar(10)
);

create table Work(
   id integer,
   gid varchar(40),
   name decimal(52,3),
   type varchar(10),
   comment varchar(1000),
   edits_pending boolean,
   last_updated decimal(29,3),
   language varchar(10)
);


create table Work_Type(
   id integer,
   name varchar(20),
   parent varchar(10),
   child_order integer,
   description decimal(77,0),
   gid varchar(40)
);

