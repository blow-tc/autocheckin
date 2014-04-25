@echo off

set user=blow-tc
set repo=autocheckin
set personalAccessToken=8ddb9dca8d16a16d504c3638f8c49e63e703d561
set tempfile=%TEMP%\_autocheckin_temp_delete_me.txt

::
:: List filenames in the repo (by convention each filename is a username)
::
curl -X GET "https://api.github.com/repos/%user%/%repo%/contents/" --user "%personalAccessToken%:x-oauth-basic" --silent | grep name | cut -d":" -f2 | tr -d "," | tr -d """