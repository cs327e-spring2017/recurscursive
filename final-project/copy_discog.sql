set search_path = discog;

copy Artists from 's3://cs327e-final-project-datasets/discog-csv/artists.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Genres from 's3://cs327e-final-project-datasets/discog-csv/genres.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Labels from 's3://cs327e-final-project-datasets/discog-csv/labels.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Releases from 's3://cs327e-final-project-datasets/discog-csv/releases.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Releases_Artists from 's3://cs327e-final-project-datasets/discog-csv/releases_artists.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Releases_Genres from 's3://cs327e-final-project-datasets/discog-csv/releases_genres.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks roundec compupdate ON
maxerror 50;

copy Releases_Labels from 's3://cs327e-final-project-datasets/discog-csv/releases_labels.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

