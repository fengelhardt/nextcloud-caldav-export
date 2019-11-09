#!/bin/bash

# fill in your data here into this file
# To find the required data, go to nextcloud calendar tab and hit the download button for your calendar.
# Look at its download url. It should look like
# "https://<server-name-and-path>/remote.php/dav/calendars/<your-user-name>/<your-calendar-name>?export"

# url: Put url here: "https://<server-name-and-path>/remote.php/dav/calendars"
url=https://your-server-name/remote.php/dav/calendars/
# user: Put user name here.
user=bob
# pwd: This is your nextcloud password.
pwd=bobssecretpassword
# Put the calendar names here that shall be saved.
calendars="personal birthdays marathontraining"
# Where should the backed up files go?
backupfolder=.

