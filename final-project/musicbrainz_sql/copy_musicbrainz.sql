set search_path = musicbrainz;

\copy Area from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Area_Type from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Artist from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Artist_Credit from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Artist_Credit_Name from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Artist_Type from 's3://cs327e-final-project-datasets/music-brainz-metadata-csv/'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks roundec compupdate ON
maxerror 50;

\copy Gender from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Label from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Language from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Medium from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Medium_Format from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Place from 's3://cs327e-final-project-datasets/music-brainz-metadata-csv/'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks roundec compupdate ON
maxerror 50;

\copy Place_Type from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Recording from 's3://cs327e-final-project-datasets/music-brainz-metadata-csv/'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks roundec compupdate ON
maxerror 50;

\copy Release from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Release_Packaging from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Release_Status from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Release_Unknown_Country from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Work from 's3://cs327e-final-project-datasets/music-brainz-csv/words.csv'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

\copy Work_Type from 's3://cs327e-final-project-datasets/music-brainz-metadata-csv/'
iam_role 'arn:aws:iam::531237488045:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks roundec compupdate ON
maxerror 50;