#Put owncloud into maintenance mode
sed -i -e "s/'maintenance' => false/'maintenance' => true/g" /var/www/owncloud/$

#Send directories to respective folders on the backup server using Duplicity
export PASSPHRASE=yourPassPhrase
export FTP_PASSWORD=yourFTPPassword

#Remove backups older than 2 weeks
duplicity remove-older-than 2W --force ftp://username@domain/serverBackupDirectory

#Remove the --no-encryption argument for the backed up files to be encrypted using the defined PASSPHRASE variable
#errorfile.txt is used to store the duplicity output (errors,stats etc)
duplicity --no-encryption /directoryToBeBackedUp ftp://username@domain/serverBackupDirectory > errorfile.txt

unset PASSPHRASE
unset FTP_PASSWORD

#Take owncloud out of maintenance mode
sed -i -e "s/'maintenance' => true/'maintenance' => false/g" /var/www/owncloud/$

#Function used for checking output files for errors
function checkErrors() {
searchString="Errors 0"

#Check if current file contains any errors
if grep -q $searchString $1; then
        echo "No Backup Errors"
else
 #If there are any errors, send the error output to email address
        echo "Backup Failure" | mail -s "subject" -a $1 youremail@domain.com
        echo error
fi
}

errorFilename="/home/ubuntu/errorfile.txt"

#Call checkErrors on error output file
checkErrors $errorFilename



