The only issue we ran into was that we were not able to connect the redshift cluster with the psql client. We received the 
the client encoding error and attempted to add “set PGCLIENTENCODING=UTF8”, but the file wouldn't save. Also, when we tried 
to change the permission of the file to "Write" for the user, we kept getting a permission denied error which was different 
than the access denied error. Eventually we were able to get the permission change to run, but the file still wouldn't save
 the changes. After going to Sean's office hours on Friday morning, we learned we had to run our text editor (Sublime Text)
 and Git Bash as administrators. This solved our issue.