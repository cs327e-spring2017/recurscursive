set search_path = millionsong;

alter table millionsong.Songs_Summary add column ctitle varchar(285);

update millionsong.Songs_Summary set ctitle = title;

update millionsong.Songs_Summary set ctitle = initcap(btrim(split_part(ctitle,
' -' , 1)));
update millionsong.Songs_Summary set ctitle = initcap(btrim(split_part(ctitle,
' (' , 1)));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, ')', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, '/', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, '\\', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, '[', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, ']', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, ':', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, ';', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, ' with', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, ' vs', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, ' Vs', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, ' VS', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, ' VS.', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, ' Vs.', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, ' vs.', '')); 
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, '...', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, '_', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, '+', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, '~', '')); 
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, '"', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, '-', '')); 
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, '>', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, '<', ''));
update millionsong.Songs_Summary set ctitle = initcap(replace(ctitle, '\x', ''));