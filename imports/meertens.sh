cd meertens

unzip -o Top_eerste_voornamen_NL_2010.zip
iconv -f ISO8859-1 -t UTF-8 Top_eerste_voornamen_NL_2010.csv | tail -n +3 > Top_eerste_voornamen_NL_2010.csv.utf8
flip -bu Top_eerste_voornamen_NL_2010.csv.utf8
awk -F ';' '{print $2"\t"$3"\tvrouwelijke voornaam"}' Top_eerste_voornamen_NL_2010.csv.utf8 |sed 's/\([0-9]\)\.\([0-9]\)/\1\2/' | grep -v '?' > voornamen.tsv
awk -F ';' '{print $4"\t"$5"\tmannelijke voornaam"}' Top_eerste_voornamen_NL_2010.csv.utf8 |sed 's/\([0-9]\)\.\([0-9]\)/\1\2/' | grep -v '?' | grep -Pv '\t\t' >> voornamen.tsv
rm -f Top_eerste_voornamen_NL_2010.csv Top_eerste_voornamen_NL_2010.csv.utf8
cd ..
