# Server-Backup

This bash script can be used for backing up files to a remote server.  The script requires Duplicity to be installed, a simple tool which uses FTP to backup and restore files, using full or incremental backups.  Also supported by Duplicity is the ability to encrypt these files.

The bash script has the functionality to allow emails to be sent (assuming mail is set up) if any errors occur during the backup process.

