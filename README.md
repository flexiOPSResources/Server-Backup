# Server-Backup

These bash scripts can be used for backing up and restoring files to/from a remote server.  The scripts require Duplicity to be installed, a simple tool which uses FTP to backup and restore files, using full or incremental backups.  Also supported by Duplicity is the ability to encrypt these files.



backup.sh is primarily used for backing up an owncloud platform, thus is contains scripting which will enable maintenance mode whilst the backup is taking place. backup.sh also has the functionality to allow emails to be sent (if mail is set up) if any errors occur during the backup process.

