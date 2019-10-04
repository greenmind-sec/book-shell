date | cut -f 4 -d ' '

date | tr -s " "

date | tr -s " " | cut -f 4 -d " "

date

Data=$(date | cut -f 2-3 -d ' ')

echo $Data

who | grep -v "$Data" | cut -f1 -d ' '
