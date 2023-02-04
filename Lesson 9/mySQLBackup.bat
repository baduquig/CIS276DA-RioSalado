REM mySQLbackup.bat first parameter is the database name
REM * backup the mySQL database, username is bkupUser
REM *
REM * The PATH is the location of the mySQL utility programs, mysqldump in this case.
PATH ;
REM PATH c:\Program Files\mySQL\MySQL Server 5.6\bin
PATH C:\Program Files\MySQL\MySQL Server 8.0\bin
REM
REM below the filename will be in the format %1_backupYYYYMMDD, every file will be unique
mysqldump --user=bkupUser--password=backup --resultfile="c:\usr\local\Backups\%1_backup%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%.sql"
REM *
REM modify this .bat file if you prefer the file name to be in the format %1_backupWEEKDAY.sql, like sampdb_backupTHU.sql
REM It works great for weekly backups, overwriting each day as the backups run
REM mysqldump --user=bkupUser --password=backup --resultfile="c:\usr\local\Backups\%1_backup%DATE:~0,3%.sql" %1
REM *