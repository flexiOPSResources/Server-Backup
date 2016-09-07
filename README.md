# Server-Backup

These bash scripts can be used for backing up and restoring files to/from a remote server.  The scripts require Duplicity to be installed, a simple tool which uses FTP to backup and restore files, using full or incremental backups.  Also supported by Duplicity is the ability to encrypt these files.

backup.sh has the functionality to allow emails to be sent (assuming mail is set up) if any errors occur during the backup process.

