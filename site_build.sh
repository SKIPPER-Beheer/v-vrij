#script ter automatisering van het bouwen en pushen van jekyll site wijzigingen. Voorwaarde: positie cursor in cli = hoofddirecty: b-dev/

#stap-1.a: verwijder lokale _config.yml

rm -f _config.yml

#stap-1.b: kopieer de remote congig.yml naar bouw locatie (b-dev);

cp /home/ikcjs/Documents/site-development/00-local-dev/remote/_config.yml _config.yml

#stap-1.c: remove _site

rm -r _site

#stap-2: bouw de jekyll site obv remote config.yml (belangrijk vooir de links, waarbij lokaal afwijktvan remote) Dit schept een folder: _site;

bundle exec jeyll build

#stap-3: ga naar _site/;

cd _site

#stap-4: schuif inhoud naar ~/Documents/site-development/a-dev;

mv -f * /home/ikcjs/Documents/site-development/00-local-dev/a-dev

# een betere methode dan mv is resynch aangezien de build kan veranderen. -a: archive mode; v: verbose; u: only copy files with newer modification; --delete: delete the files in target folder that do not exist in the source. De 1e link = met / omdat het verwijst naar naar de directory (zonder /) maar naar de files IN de directory.

rsync -avu --delete "/home/ikcjs/Documents/site-development/00-local-dev/a-dev/_site/" "/home/ikcjs/Documents/site-development/00-local-dev/a-dev"

#stap-5: ga naar ~/Documents/site-development/a-dev;
    #a. move to /00-local-dev/ from /_site/ = 2-steps;
cd ..
cd ..
    # move into /-a-dev/
cd a-dev

#stap-6: Voeg de inhoud toe aan de repo: git add -all;

git add -all

# stap-7: maak een commit bericht via interactie:

echo "voeg je commit message toe"
read user_message
echo "$user_message"
git commit -m "$user_message"

#stap-8: schuif de inhoud van de lokale repo (original) naar remote repo (main);

git push

#stap-9: move back to /b-dev/ from /a-dev/

cd ..
cd b-dev

#stap-9: kopieer de lokale config-yml naar b-dev;

cp /home/ikcjs/Documents/site-development/00-local-dev/local/_config.yml _config.yml

#stap-10: Bouw de _site met de lokale instellingen

bundle exec jekyll build

#stap-12: Klaar-bericht

echo "Je script heeft alle stappen uitgevoerd, en je site is lokaal weer opgezet. Ga na of alles naar wens is."


# Voor het beschouwen van je lokale site: geef zelf het commando: bundle exec jekyll serve.

