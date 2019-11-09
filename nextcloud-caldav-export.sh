#!/bin/bash

THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

source $THIS_SCRIPT_DIR/config.sh

DATE=`date +"%d-%m-%Y"`

cd $backupfolder

outfiles=""

for x in $calendars 
do
	calurl="$url/$user/$x?export"
	outfile="$x.ics"
	echo $calurl
	wget --auth-no-challenge --http-user=$user --http-password="$pwd" --output-document="$outfile" "$calurl"
	outfiles="$outfiles $outfile"
done

tar czf $DATE-ics-backup.tgz *.ics

#echo $outfiles
rm -f $outfiles
