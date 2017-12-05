if [ ! -e meertens ]; then
	mkdir meertens
fi
cd meertens
wget -N http://www.meertens.knaw.nl/nvb/downloads/Top_eerste_voornamen_NL_2010.zip
cd ..
