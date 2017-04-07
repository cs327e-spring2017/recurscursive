set search_path = millionsong;


\copy Artist_Mbtag from 's3://cs327e-final-project-datasets/million-songs-csv/artist_mbtag.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Artist_Term from 's3://cs327e-final-project-datasets/million-songs-csv/artist_term.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Similar_Artists from 's3://cs327e-final-project-datasets/million-songs-csv/similar_artists.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Songs_Popularity from 's3://cs327e-final-project-datasets/million-songs-csv/songs_popularity.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Songs_Summary from 's3://cs327e-final-project-datasets/million-songs-csv/songs_summary.csv'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Song_Metadata from 's3://cs327e-final-project-datasets/million-songs-metadata-csv/'
iam_role 'arn:aws:iam::050717752520:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks roundec compupdate ON
maxerror 50;