export PASSPHRASE=yourPassPhrase
export FTP_PASSWORD=backupServerPassword

#--no-encryption is used only if the backed up files were encrypted using a passphrase
duplicity --no-encryption ftp://username@domain/serverBackupDirectory /home/username/backupDestination
unset PASSPHRASE
unset FTP_PASSWORD
