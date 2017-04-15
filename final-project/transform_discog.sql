set search_path = discog;

alter table discog.Labels add column cname varchar(255);
alter table discog.Releases add column ctitle varchar(290);

update discog.Labels set cname = name;
update discog.Releases set ctitle = title;


update discog.Labels set cname = initcap(btrim(split_part(cname,
' -' , 1)));
update discog.Labels set cname = initcap(btrim(split_part(cname,
' (' , 1)));
update discog.Labels set cname = initcap(replace(cname, ')', ''));
update discog.Labels set cname = initcap(replace(cname, '/', ''));
update discog.Labels set cname = initcap(replace(cname, '\\', ''));
update discog.Labels set cname = initcap(replace(cname, '[', ''));
update discog.Labels set cname = initcap(replace(cname, ']', ''));
update discog.Labels set cname = initcap(replace(cname, ':', ''));
update discog.Labels set cname = initcap(replace(cname, ';', ''));
update discog.Labels set cname = initcap(replace(cname, ' with', ''));
update discog.Labels set cname = initcap(replace(cname, ' vs', ''));
update discog.Labels set cname = initcap(replace(cname, ' Vs', ''));
update discog.Labels set cname = initcap(replace(cname, ' VS', ''));
update discog.Labels set cname = initcap(replace(cname, ' VS.', ''));
update discog.Labels set cname = initcap(replace(cname, ' Vs.', ''));
update discog.Labels set cname = initcap(replace(cname, ' vs.', '')); 
update discog.Labels set cname = initcap(replace(cname, '...', ''));
update discog.Labels set cname = initcap(replace(cname, '_', ''));
update discog.Labels set cname = initcap(replace(cname, '+', ''));
update discog.Labels set cname = initcap(replace(cname, '~', '')); 
update discog.Labels set cname = initcap(replace(cname, '"', ''));
update discog.Labels set cname = initcap(replace(cname, '-', '')); 
update discog.Labels set cname = initcap(replace(cname, '>', ''));
update discog.Labels set cname = initcap(replace(cname, '<', ''));
update discog.Labels set cname = initcap(replace(cname, '\x', ''));

update discog.Releases set ctitle = initcap(btrim(split_part(ctitle,
' -' , 1)));
update discog.Releases set ctitle = initcap(btrim(split_part(ctitle,
' (' , 1)));
update discog.Releases set ctitle = initcap(replace(ctitle, ')', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, '/', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, '\\', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, '[', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, ']', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, ':', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, ';', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, ' with', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, ' vs', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, ' Vs', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, ' VS', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, ' VS.', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, ' Vs.', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, ' vs.', '')); 
update discog.Releases set ctitle = initcap(replace(ctitle, '...', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, '_', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, '+', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, '~', '')); 
update discog.Releases set ctitle = initcap(replace(ctitle, '"', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, '-', '')); 
update discog.Releases set ctitle = initcap(replace(ctitle, '>', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, '<', ''));
update discog.Releases set ctitle = initcap(replace(ctitle, '\x', ''));