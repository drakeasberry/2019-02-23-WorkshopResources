echo "columns for cut $1, $2"
echo "number of lines for head $3"
echo "option for sort $4"
for gapminderfile in [U-Z]*.txt
do
    echo $gapminderfile
    cut -f "$1","$2" $gapminderfile | sort -"$4" | head -"$3"
done
