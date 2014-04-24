@echo off

set user=blow-tc
set repo=autocheckin
set personalAccessToken=22f7a5d3c66a4efba2140932a726172921e81275
set tempfile=%TEMP%\_autocheckin_temp_delete_me.txt

::
:: List filenames in the repo (by convention each filename is a username)
::
curl -X GET "https://api.github.com/repos/%user%/%repo%/contents/" --user "%personalAccessToken%:x-oauth-basic" --silent | grep name | cut -d":" -f2 | tr -d "," | tr -d """