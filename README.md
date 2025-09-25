# KULeuvenLaTeXClasses -- https://github.com/srebry/KULeuvenLaTeXClasses

Dit pakket voorziet bestanden en instructies om LaTeX en de KU Leuven huisstijl te installeren en te gebruiken.

## Inhoud van het pakket KULeuvenLaTeXClasses

Het pakket KULeuvenLaTeXClasses bevat 3 mappen met daarin volgende bestanden...
* `kulak` - class files en benodigdheden voor de documentklassen van de KU Leuven huisstijl:
  * `kulakarticle.cls` - eenzijdig document met section als hoogste niveau, gebaseerd op `article.cls`;
  * `kulakreport.cls` - eenzijdig document met chapter als hoogste niveau, gebaseerd op `report.cls`;
  * `kulakposter.cls` - wetenschappelijke poster op formaat A3 tot A0, gebaseerd op `sciposter.cls`;
  * `kulakbeamer.cls` - presentaties maken, gebaseerd op `beamer.cls`.
* `Templates` - minimale `.tex`-bestanden met een typische preambule bij elk van deze vier documentklassen. Deze templates kunnen als startpunt voor een nieuw document dienen.
* `Examples` - voorbeeldbestanden bij elke documentklasse, zowel `.tex`-bron als `.pdf`-output
  * `instructies` - gedetailleerde gids om aan de slag te gaan met LaTeX en de KU Leuven huisstijl, document in `kulakarticle`-stijl;
  * `IntroductieLaTeXHandleiding` - rapport in `kulakreport`-stijl geconcipieerd als handleiding om van start te gaan met LaTeX;
  * `IntroductieLaTeXPresentatie` - rapport in `kulakbeamer`-stijl geconcipieerd als handleiding om van start te gaan met Beamer;
  * `Poster` - voorbeelden in `kulakposter`-stijl met verschillende opties

## Gebruiksinstructies: `instructies.pdf`

Het bestand `instructies.pdf` is een gedetailleerde gids om aan de slag te gaan met LaTeX en de KU Leuven huisstijl.
* Sectie 1: Opzet van een LaTeX-tekstzetsysteem
* Sectie 2: Gedetailleerde instructies voor **installatie van TeX Live en TeXstudio**
* Sectie 3: Gedetailleerde instructies voor **installatie van de huisstijl**
  * 3.2.1 "Downloaden en configureren" is aangewezen voor wie Github niet kent
  * 3.2.2 "Repository clonen en symlinks maken" is aangewezen voor de ervaren Github gebruiker
  * 3.2.3 en 3.2.4 geven aangepaste richtlijnen voor Linux en MacOS gebruikers
* Sectie 4: Toelichting bij specifieke mogelijkheden van TeXstudio
  * 4.1 Spellingscorrectie
  * 4.2 User commands
  * 4.3 Integratie van R- (Knitr) en Python-code (Pweave) in LaTeX
* Sectie 5: Toelichting bij specifieke mogelijkheden van LaTeX
  * 5.1 Bibliografie toevoegen
  * 5.2 Figuren invoegen
  * 5.3 en 5.4 Further reading

#### Contacteer de auteur als bepaalde informatie onjuist, gedateerd of onvolledig zou blijken.