set search_path = millionsong

\copy Artist_Mbtag from 's3://cs327e-final-project-datasets/million-songs-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Artist_Term from 's3://cs327e-final-project-datasets/million-songs-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Similar_Artists from 's3://cs327e-final-project-datasets/million-songs-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Songs_Popularity from 's3://cs327e-final-project-datasets/million-songs-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Songs_Summary from 's3://cs327e-final-project-datasets/million-songs-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Song_Metadata from 's3://cs327e-final-project-datasets/million-songs-metadata-csv/'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks roundec compupdate ON
maxerror 50;