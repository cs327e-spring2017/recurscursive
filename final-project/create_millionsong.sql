drop schema if exists millionsong cascade;
create schema millionsong;
set search_path = millionsong;

create table Artist_Mbtag(
   artist_id varchar(200),
   mbtag varchar(1000)
);

create table Artist_Term(
   artist_id varchar(200),
   term varchar(1000)
);

create table Similar_Artists(
   target varchar(20),
   similar_ varchar(20)
);

create table Songs_Popularity(
   userid varchar(40),
   song varchar(20),
   play_count integer
);

create table Songs_Summary(
   track_id varchar(20),
   title varchar(2000),
   song_id varchar(200),
   release varchar(2000),
   artist_id varchar(200),
   artist_mbid varchar(400),
   artist_name varchar(1000),
   duration decimal(9,3),
   artist_familiarity decimal(14,3),
   artist_hotttnesss decimal(14,3),
   year integer
);

create table Song_Metadata(
   title varchar(600),
   album varchar(500),
   artist varchar(200),
   duration decimal(8,3),
   sample_rate integer,
   artist_7digitalid integer,
   artist_familiarity decimal(19,3),
   artist_hotness decimal(19,3),
   artiset_id varchar(20),
   artist_latitude decimal(18,3),
   artist_location varchar(10),
   artist_longitude decimal(18,3),
   artist_mbid varchar(40),
   hip_hop boolean,
   pop_rock boolean,
   new_wave boolean,
   jazz boolean,
   reggae boolean,
   disco boolean,
   comedy boolean,
   soul boolean,
   ballad boolean,
   ragtime boolean,
   male_vocalist boolean,
   tango boolean,
   dubstep boolean,
   soundtrack boolean,
   cumbia boolean,
   big_band boolean,
   bluegrass boolean,
   opera boolean,
   tejano boolean,
   trip_hop boolean,
   blues boolean,
   trance boolean,
   mambo boolean,
   salsa boolean,
   pop boolean,
   rapcore boolean,
   orchestra boolean,
   swing boolean,
   freestyle boolean,
   techno boolean,
   dance boolean,
   mariachi boolean,
   celtic boolean,
   oldies boolean,
   punk boolean,
   merengue boolean,
   karaokee boolean,
   latin boolean,
   8bit boolean,
   gospel boolean,
   bossa_nova boolean,
   electronic boolean,
   polka boolean,
   new_age boolean,
   dj boolean,
   country boolean,
   ranchera boolean,
   chinese boolean,
   ska boolean,
   christian boolean,
   rock boolean,
   classical boolean,
   concerto boolean,
   experimental boolean,
   rap boolean,
   folk boolean,
   waltz boolean,
   guitar boolean,
   female_vocalist boolean,
   portuguese boolean,
   hardcore boolean,
   latin_pop boolean,
   metal boolean,
   italian boolean,
   remix boolean,
   progressive boolean,
   alternative boolean,
   japanese boolean,
   ambient boolean,
   choral_music boolean,
   instrumental boolean,
   swedish boolean,
   tropical boolean,
   urban boolean,
   dutch boolean,
   piano boolean,
   american boolean,
   spanish boolean,
   romantic boolean,
   cowboy boolean,
   christmas_music boolean,
   spiritual boolean,
   brazilian boolean,
   singer_songwriter boolean,
   indie boolean,
   break_beat boolean,
   religious boolean,
   rare_grove boolean,
   world boolean,
   rhythm_and_blues boolean,
   easy_listening boolean,
   industrial boolean,
   house boolean,
   avant_garde boolean,
   spoken_word boolean,
   fusion boolean,
   glam boolean,
   british_invasion boolean,
   funk boolean,
   parlophone boolean,
   britpop boolean,
   grunge boolean,
   greek boolean,
   chanson boolean,
   swiss boolean,
   ghetto_tech boolean,
   thrash_core boolean,
   patriotic boolean,
   humppa boolean,
   turnablism boolean,
   mexican boolean,
   canadian boolean,
   french boolean,
   meditation boolean,
   soukous boolean,
   ost boolean,
   flamenco boolean,
   screamo boolean,
   freakbeat boolean,
   melbourne boolean,
   africa boolean,
   eurodance boolean,
   accordion boolean,
   german boolean,
   ethnic boolean,
   bhangra boolean,
   gaita boolean,
   san_francisco_bay_area boolean,
   cajun boolean,
   jungle_music boolean,
   marimba boolean,
   musette boolean,
   united_states boolean,
   artist_playmeid integer,
   audio_md5 varchar(400),
   danceability decimal(3,1),
   end_fade_in decimal(19,3),
   energy decimal(3,1),
   song_key integer,
   key_confidence decimal(3,1),
   loudness decimal(19,3),
   mode boolean,
   mode_confidence decimal(5,3),
   release_7digitalid integer,
   song_hotness decimal(19,3),
   song_id varchar(20),
   start_fade_out decimal(18,3),
   tempo decimal(18,3),
   time_signature integer,
   time_signature_confidence decimal(19,3),
   track_id varchar(700),
   track_7digitalid integer,
   year integer,
   bars_confidence_avg decimal(20,3),
   bars_confidence_max decimal(5,3),
   bars_confidence_min decimal(3,1),
   bars_confidence_stddev decimal(20,3),
   bars_confidence_count integer,
   bars_confidence_sum decimal(18,3),
   bars_start_avg decimal(18,3),
   bars_start_max decimal(18,3),
   bars_start_min decimal(18,3),
   bars_start_stddev decimal(18,3),
   bars_start_count integer,
   bars_start_sum decimal(10,3),
   beats_confidence_avg decimal(19,3),
   beats_confidence_max decimal(19,3),
   beats_confidence_min decimal(3,1),
   beats_confidence_stddev decimal(19,3),
   beats_confidence_count integer,
   beats_confidence_sum decimal(18,3),
   beats_start_avg decimal(18,3),
   beats_start_max decimal(9,3),
   beats_start_min decimal(19,3),
   beats_start_stddev decimal(18,3),
   beats_start_count integer,
   beats_start_sum decimal(18,3),
   sections_confidence_avg decimal(19,3),
   sections_confidence_max decimal(3,1),
   sections_confidence_min decimal(19,3),
   sections_confidence_stddev decimal(19,3),
   sections_confidence_count integer,
   sections_confidence_sum decimal(18,3),
   sections_start_avg decimal(18,3),
   sections_start_max decimal(18,3),
   sections_start_min decimal(3,1),
   sections_start_stddev decimal(18,3),
   sections_start_count integer,
   sections_start_sum decimal(18,3),
   segments_confidence_avg decimal(18,3),
   segments_confidence_max decimal(3,1),
   segments_confidence_min decimal(3,1),
   segments_confidence_stddev decimal(19,3),
   segments_confidence_count integer,
   segments_confidence_sum decimal(18,3),
   segments_loudness_max_avg decimal(19,3),
   segments_loudness_max_max decimal(19,3),
   segments_loudness_max_min decimal(5,1),
   segments_lodness_max_stddev decimal(18,3),
   segments_lodness_max_count integer,
   segments_loudness_max_sum decimal(19,3),
   segments_loudness_max_time_avg decimal(19,3),
   segments_loudness_max_time_max decimal(18,3),
   segments_loudness_max_time_min decimal(3,1),
   segments_loudness_max_time_stddev decimal(19,3),
   segments_loudness_max_time_count integer,
   segments_loudness_max_time_sum decimal(18,3),
   segments_loudness_start_avg decimal(19,3),
   segments_loudness_start_max decimal(19,3),
   segments_loudness_start_min decimal(5,1),
   segments_loudness_start_stddev decimal(18,3),
   segments_loudness_start_count integer,
   segments_loudness_start_sum decimal(19,3),
   segments_pitches_0_avg decimal(19,3),
   segments_pitches_0_max decimal(3,1),
   segments_pitches_0_min decimal(21,3),
   segments_pitches_0_stddev decimal(19,3),
   segments_pitches_0_count integer,
   segments_pitches_0_sum decimal(7,3),
   segments_pitches_1_avg decimal(19,3),
   segments_pitches_1_max decimal(3,1),
   segments_pitches_1_min decimal(21,3),
   segments_pitches_1_stddev decimal(19,3),
   segments_pitches_1_count integer,
   segments_pitches_1_sum decimal(18,3),
   segments_pitches_2_avg decimal(19,3),
   segments_pitches_2_max decimal(3,1),
   segments_pitches_2_min decimal(21,3),
   segments_pitches_2_stddev decimal(17,3),
   segments_pitches_2_count integer,
   segments_pitches_2_sum decimal(18,3),
   segments_pitches_3_avg decimal(19,3),
   segments_pitches_3_max decimal(3,1),
   segments_pitches_3_min decimal(21,3),
   segments_pitches_3_stddev decimal(19,3),
   segments_pitches_3_count integer,
   segments_pitches_3_sum decimal(18,3),
   segments_pitches_4_avg decimal(19,3),
   segments_pitches_4_max decimal(3,1),
   segments_pitches_4_min decimal(21,3),
   segments_pitches_4_stddev decimal(19,3),
   segments_pitches_4_count integer,
   segments_pitches_4_sum decimal(18,3),
   segments_pitches_5_avg decimal(19,3),
   segments_pitches_5_max decimal(3,1),
   segments_pitches_5_min decimal(4,2),
   segments_pitches_5_stddev decimal(19,3),
   segments_pitches_5_count integer,
   segments_pitches_5_sum decimal(18,3),
   segments_pitches_6_avg decimal(19,3),
   segments_pitches_6_max decimal(3,1),
   segments_pitches_6_min decimal(20,3),
   segments_pitches_6_stddev decimal(19,3),
   segments_pitches_6_count integer,
   segments_pitches_6_sum decimal(18,3),
   segments_pitches_7_avg decimal(19,3),
   segments_pitches_7_max decimal(3,1),
   segments_pitches_7_min decimal(21,3),
   segments_pitches_7_stddev decimal(19,3),
   segments_pitches_7_count integer,
   segments_pitches_7_sum decimal(7,3),
   segments_pitches_8_avg decimal(19,3),
   segments_pitches_8_max decimal(3,1),
   segments_pitches_8_min decimal(4,2),
   segments_pitches_8_stddev decimal(19,3),
   segments_pitches_8_count integer,
   segments_pitches_8_sum decimal(6,3),
   segments_pitches_9_avg decimal(19,3),
   segments_pitches_9_max decimal(3,1),
   segments_pitches_9_min decimal(21,3),
   segments_pitches_9_stddev decimal(19,3),
   segments_pitches_9_count integer,
   segments_pitches_9_sum decimal(7,3),
   segments_pitches_10_avg decimal(19,3),
   segments_pitches_10_max decimal(3,1),
   segments_pitches_10_min decimal(20,3),
   segments_pitches_10_stddev decimal(19,3),
   segments_pitches_10_count integer,
   segments_pitches_10_sum decimal(7,3),
   segments_pitches_11_avg decimal(19,3),
   segments_pitches_11_max decimal(3,1),
   segments_pitches_11_min decimal(21,3),
   segments_pitches_11_stddev decimal(18,3),
   segments_pitches_11_count integer,
   segments_pitches_11_sum decimal(18,3),
   segments_start_avg decimal(17,3),
   segments_start_max decimal(9,3),
   segments_start_min decimal(3,1),
   segments_start_stddev decimal(18,3),
   segments_start_count integer,
   segments_start_sum decimal(18,3),
   segments_timbre_0_avg decimal(19,3),
   segments_timbre_0_max decimal(3,1),
   segments_timbre_0_min decimal(21,3),
   segments_timbre_0_stddev decimal(19,3),
   segments_timbre_0_count integer,
   segments_timbre_0_sum decimal(7,3),
   segments_timbre_1_avg decimal(19,3),
   segments_timbre_1_max decimal(3,1),
   segments_timbre_1_min decimal(21,3),
   segments_timbre_1_stddev decimal(19,3),
   segments_timbre_1_count integer,
   segments_timbre_1_sum decimal(18,3),
   segments_timbre_2_avg decimal(19,3),
   segments_timbre_2_max decimal(3,1),
   segments_timbre_2_min decimal(21,3),
   segments_timbre_2_stddev decimal(17,3),
   segments_timbre_2_count integer,
   segments_timbre_2_sum decimal(18,3),
   segments_timbre_3_avg decimal(19,3),
   segments_timbre_3_max decimal(3,1),
   segments_timbre_3_min decimal(21,3),
   segments_timbre_3_stddev decimal(19,3),
   segments_timbre_3_count integer,
   segments_timbre_3_sum decimal(18,3),
   segments_timbre_4_avg decimal(19,3),
   segments_timbre_4_max decimal(3,1),
   segments_timbre_4_min decimal(21,3),
   segments_timbre_4_stddev decimal(19,3),
   segments_timbre_4_count integer,
   segments_timbre_4_sum decimal(18,3),
   segments_timbre_5_avg decimal(19,3),
   segments_timbre_5_max decimal(3,1),
   segments_timbre_5_min decimal(4,2),
   segments_timbre_5_stddev decimal(19,3),
   segments_timbre_5_count integer,
   segments_timbre_5_sum decimal(18,3),
   segments_timbre_6_avg decimal(19,3),
   segments_timbre_6_max decimal(3,1),
   segments_timbre_6_min decimal(20,3),
   segments_timbre_6_stddev decimal(19,3),
   segments_timbre_6_count integer,
   segments_timbre_6_sum decimal(18,3),
   segments_timbre_7_avg decimal(19,3),
   segments_timbre_7_max decimal(3,1),
   segments_timbre_7_min decimal(21,3),
   segments_timbre_7_stddev decimal(19,3),
   segments_timbre_7_count integer,
   segments_timbre_7_sum decimal(7,3),
   segments_timbre_8_avg decimal(19,3),
   segments_timbre_8_max decimal(3,1),
   segments_timbre_8_min decimal(4,2),
   segments_timbre_8_stddev decimal(19,3),
   segments_timbre_8_count integer,
   segments_timbre_8_sum decimal(6,3),
   segments_timbre_9_avg decimal(19,3),
   segments_timbre_9_max decimal(3,1),
   segments_timbre_9_min decimal(21,3),
   segments_timbre_9_stddev decimal(19,3),
   segments_timbre_9_count integer,
   segments_timbre_9_sum decimal(7,3),
   segments_timbre_10_avg decimal(19,3),
   segments_timbre_10_max decimal(3,1),
   segments_timbre_10_min decimal(20,3),
   segments_timbre_10_stddev decimal(19,3),
   segments_timbre_10_count integer,
   segments_timbre_10_sum decimal(7,3),
   segments_timbre_11_avg decimal(19,3),
   segments_timbre_11_max decimal(3,1),
   segments_timbre_11_min decimal(21,3),
   segments_timbre_11_stddev decimal(18,3),
   segments_timbre_11_count integer,
   segments_timbre_11_sum decimal(18,3),
   tatums_confidence_avg decimal(20,3),
   tatums_confidence_max decimal(19,3),
   tatums_confidence_min decimal(3,1),
   tatums_confidence_stddev decimal(19,3),
   tatums_confidence_count integer,
   tatums_confidence_sum decimal(18,3),
   tatums_start_avg decimal(17,3),
   tatums_start_max decimal(9,3),
   tatums_start_min decimal(19,3),
   tatums_start_stddev decimal(18,3),
   tatums_start_count integer,
   tatums_start_sum decimal(11,3)
);
