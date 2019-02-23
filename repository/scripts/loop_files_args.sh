# Use all files specified as arguments ("$@")
for gapminderfile in "$@" # $@ says go get all arguments from command line
do
    echo $gapminderfile  # output the filename to the screen
    cut -f 5 $gapminderfile | sort -n | head -1  # sort the 5th column and output the lowest value
done
