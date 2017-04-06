set search_path = discog;

\copy Artists from 's3://cs327e-final-project-datasets/million-songs-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Genres from 's3://cs327e-final-project-datasets/discog-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Labels from 's3://cs327e-final-project-datasets/discog-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Releases from 's3://cs327e-final-project-datasets/discog-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Releases_Artists from 's3://cs327e-final-project-datasets/discog-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Releases_Genres from 's3://cs327e-final-project-datasets/discog-metadata-csv/'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks roundec compupdate ON
maxerror 50;

\copy Releases_Labels from 's3://cs327e-final-project-datasets/discog-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

