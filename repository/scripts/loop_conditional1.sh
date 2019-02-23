# $1 is the field to cut (column index)
# $2 specifies the high or low value to output

for gapminderfile in [U-Z]*.txt
do    
    echo $gapminderfile
    if [ "$2" = "high" ] # test whether 2nd argument is "high"
    then
            cut -f "$1" $gapminderfile | sort -n | tail -1
    else
            cut -f "$1" $gapminderfile | sort -n | head -1
    fi # Don't forget to end the if test
done
