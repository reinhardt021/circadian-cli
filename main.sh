echo long text
sleep 1
#https://en.wikipedia.org/wiki/ANSI_escape_code
printf "\033[1A" # move cursor one line up
printf "\033[K" # delete til end of line
echo foo


# // this doesn't work
#echo -n first
#sleep 1
#echo -ne "\rsecond"
#echo 

