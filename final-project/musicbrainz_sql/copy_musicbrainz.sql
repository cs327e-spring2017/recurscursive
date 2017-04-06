set search_path = musicbrainz;

\copy Area from 's3://cs327e-final-project-datasets/music-brainz-csv/area.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Area_Type from 's3://cs327e-final-project-datasets/music-brainz-csv/area_type.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Artist from 's3://cs327e-final-project-datasets/music-brainz-csv/artist.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Artist_Credit from 's3://cs327e-final-project-datasets/music-brainz-csv/artist_credit.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Artist_Credit_Name from 's3://cs327e-final-project-datasets/music-brainz-csv/artist_credit_name.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Artist_Type from 's3://cs327e-final-project-datasets/music-brainz-csv/artist_type.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks roundec compupdate ON
maxerror 50;

\copy Gender from 's3://cs327e-final-project-datasets/music-brainz-csv/gender.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Label from 's3://cs327e-final-project-datasets/music-brainz-csv/label.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Language from 's3://cs327e-final-project-datasets/music-brainz-csv/language.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Medium from 's3://cs327e-final-project-datasets/music-brainz-csv/medium.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Medium_Format from 's3://cs327e-final-project-datasets/music-brainz-csv/medium_format.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Place from 's3://cs327e-final-project-datasets/music-brainz-csv/place.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks roundec compupdate ON
maxerror 50;

\copy Place_Type from 's3://cs327e-final-project-datasets/music-brainz-csv/place_type.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Recording from 's3://cs327e-final-project-datasets/music-brainz-csv/recording.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks roundec compupdate ON
maxerror 50;

\copy Release from 's3://cs327e-final-project-datasets/music-brainz-csv/release.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Release_Packaging from 's3://cs327e-final-project-datasets/music-brainz-csv/release_packaging.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Release_Status from 's3://cs327e-final-project-datasets/music-brainz-csv/release_status.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Release_Unknown_Country from 's3://cs327e-final-project-datasets/music-brainz-csv/release_unknown_country.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Work from 's3://cs327e-final-project-datasets/music-brainz-csv/work.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Work_Type from 's3://cs327e-final-project-datasets/music-brainz-csv/work_type.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks roundec compupdate ON
maxerror 50;
