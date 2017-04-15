set search_path = musicbrainz;

alter table musicbrainz.Label add column cname varchar(118);
alter table musicbrainz.Recording add column cname varchar(1904);

update musicbrainz.Label set cname = name;
update musicbrainz.Recording set cname = name;


update musicbrainz.Recording set cname = initcap(btrim(split_part(cname,
' -' , 1)));
update musicbrainz.Recording set cname = initcap(btrim(split_part(cname,
' (' , 1)));
update musicbrainz.Recording set cname = initcap(replace(cname, ')', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, '/', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, '\\', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, '[', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, ']', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, ':', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, ';', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, ' with', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, ' vs', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, ' Vs', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, ' VS', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, ' VS.', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, ' Vs.', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, ' vs.', '')); 
update musicbrainz.Recording set cname = initcap(replace(cname, '...', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, '_', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, '+', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, '~', '')); 
update musicbrainz.Recording set cname = initcap(replace(cname, '"', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, '-', '')); 
update musicbrainz.Recording set cname = initcap(replace(cname, '>', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, '<', ''));
update musicbrainz.Recording set cname = initcap(replace(cname, '\x', ''));


update musicbrainz.Label set cname = initcap(btrim(split_part(cname,
' -' , 1)));
update musicbrainz.Label set cname = initcap(btrim(split_part(cname,
' (' , 1)));
update musicbrainz.Label set cname = initcap(replace(cname, ')', ''));
update musicbrainz.Label set cname = initcap(replace(cname, '/', ''));
update musicbrainz.Label set cname = initcap(replace(cname, '\\', ''));
update musicbrainz.Label set cname = initcap(replace(cname, '[', ''));
update musicbrainz.Label set cname = initcap(replace(cname, ']', ''));
update musicbrainz.Label set cname = initcap(replace(cname, ':', ''));
update musicbrainz.Label set cname = initcap(replace(cname, ';', ''));
update musicbrainz.Label set cname = initcap(replace(cname, ' with', ''));
update musicbrainz.Label set cname = initcap(replace(cname, ' vs', ''));
update musicbrainz.Label set cname = initcap(replace(cname, ' Vs', ''));
update musicbrainz.Label set cname = initcap(replace(cname, ' VS', ''));
update musicbrainz.Label set cname = initcap(replace(cname, ' VS.', ''));
update musicbrainz.Label set cname = initcap(replace(cname, ' Vs.', ''));
update musicbrainz.Label set cname = initcap(replace(cname, ' vs.', '')); 
update musicbrainz.Label set cname = initcap(replace(cname, '...', ''));
update musicbrainz.Label set cname = initcap(replace(cname, '_', ''));
update musicbrainz.Label set cname = initcap(replace(cname, '+', ''));
update musicbrainz.Label set cname = initcap(replace(cname, '~', '')); 
update musicbrainz.Label set cname = initcap(replace(cname, '"', ''));
update musicbrainz.Label set cname = initcap(replace(cname, '-', '')); 
update musicbrainz.Label set cname = initcap(replace(cname, '>', ''));
update musicbrainz.Label set cname = initcap(replace(cname, '<', ''));
update musicbrainz.Label set cname = initcap(replace(cname, '\x', ''));