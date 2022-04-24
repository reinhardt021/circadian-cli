echo long text
sleep 1
printf "\033[1A" # move cursor one line up
printf "\033[K" # delete til end of line
echo foo


# // this doesn't work
#echo -n first
#sleep 1
#echo -ne "\rsecond"
#echo 

