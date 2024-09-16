# KULeuvenLaTeXClasses
## readme.pdf
Dit, maar uitgebreider.

## Kulak
LaTeX class-files volgens KU Leuven huisstijl (inclusief Kulak en Brugge)

### Voorbereidend werk: deze repository lokaal op je PC zetten
Voor we de bestanden in deze repository op de juiste plaats kunnen zetten, moet je ze natuurlijk eerst op je PC krijgen. Er zijn (minstens) twee manieren waarop je dat kan doen.
1. **Voor de ervaren Github gebruiker:** je kan deze repository gewoon clonen naar je lokaal bestandensysteem
2. **Voor degene voor wie Github onbekend is:** je kan deze bestanden gewoon downloaden door op de groene knop met "Code" te klikken en dan onderaan het nieuwe venster voor "Download ZIP" te kiezen. Zo download je deze bestanden als een .zip-bestand. Je kan deze .zip dan in je bestandensysteem plaatsen waar je wil (doe dit op een plaats die je gemakkelijk terugvindt) en daar uitpakken.

### Windows + TeXLive:

#### De bronbestanden op de juiste locatie op je computer plaatsen

*eenvoudige maar minder elegante manier:* Map `Kulak` verplaatsen naar `C:\texlive\texmf-local\tex\latex\local`

*technischer maar zorgt ervoor dat bestanden [up to date blijven](#waarom-kiezen-voor-symlinks):*
als alternatief kan je een symbolische link creëren naar de plaats waar je de git repository hebt gecloned vanop GitHub.

1. Open de Windows Command Prompt (in het Nederlands is die soms te vinden als "Opdrachtprompt") als administrator

![](figures/commandprompt.png)

2. Vind de locatie van deze repository op je computer.
Dit kan bijvoorbeeld door Windows Verkenner te openen en naar de map met deze repository te navigeren.
Specifiek heb je de map `kulak` nodig. Open deze map.
Als je met je rechtermuisknop op `kulak` klikt in de navigatiebalk binnen Windows Verkenner, kan je dan het adres kopiëren:

![](figures/copyaddress.png)

Dit geeft in het geval van de afbeelding `C:\Users\uXXXXXXX\Gitrepos\KULeuvenLaTeXClasses\kulak`. Dit adres hebben we later nodig.

3. Vind de map waar `texlive` geinstalleerd is. Het adres is bijvoorbeeld `C:\texlive\`

4. Nu maken we een symbolische link met het volgende commando in Command Prompt:

```
mklink /D C:\texlive\texmf-local\tex\latex\local\kulak C:\Users\uXXXXXXX\Gitrepos\KULeuvenLaTeXClasses\kulak
```

Hierbij moet je `C:\texlive\` eventueel vervangen door de locatie waar `texlive` geïnstalleerd is op jouw computer en moet je `C:\Users\uXXXXXXX\Gitrepos\KULeuvenLaTeXClasses\kulak` vervangen door het pad naar de map `kulak` (dit heb je normaal in stap 2 gekopieerd). 
Je hebt nu een symbolische link gecreëerd die verwijst naar de map `kulak` van deze repository.

#### De bronbestanden voor de Texlive distributie updaten

*texlive installatie van voor 2019:* `TeX Live Manager` openen en `Update Filename Database` uitvoeren

*texlive installatie van na 2019:* In `TeX Live Shell` klikken op `Actions` -> `Regenerate filename database`

![](figures/texliveshell.png)

> **Let op:** mogelijks moet je dit telkens wanneer je deze repository clonet en dus een geüpdate versie op je computer hebt, de database ook updaten via bovenstaande instructies.

### OS X + MacTeX:

Map `kulak` verplaatsen naar `~/Library/texmf/tex/latex/`

### Linux + TeXLive:

- Map `kulak` verplaatsen naar `~/texmf/tex/latex/` of een [symlink](#waarom-kiezen-voor-symlinks) creëren met `ln -s locatie-git-repo/kulak ~/texmf/tex/latex`
- Commando `texhash ~/texmf` in terminal uitvoeren

## Templates

Minimale `.tex`-bestanden horend bij de class-files

### Windows + TeXstudio

- Inhoud van de map `Templates` verplaatsen naar `C:\Users\<username>\AppData\Roaming\texstudio\templates\user`
- TeXstudio herstarten en `New From Template...`

$\color{red}{\text{Let op!}}$ Het systeem zal de templates enkel herkennen als die direct onder het mapje `user` staan. Ze mogen dus niet in een andere map zitten. Daarom is het geen goed idee om de map `Templates` integraal naar de map `user` te verplaatsen: als je dit doet moet je de bestanden nog uit `Templates` halen en die rechtstreeks in `user` steken.

### Linux/OS X + TeXstudio

- Inhoud van de map `Templates` verplaatsen naar `~/.config/texstudio/templates/user`
- TeXstudio herstarten en `New From Template...`

$\color{red}{\text{Let op!}}$ Het systeem zal de templates enkel herkennen als die direct onder het mapje `user` staan. Ze mogen dus niet in een andere map zitten. Daarom is het geen goed idee om de map `Templates` integraal naar de map `user` te verplaatsen: als je dit doet moet je de bestanden nog uit `Templates` halen en die rechtstreeks in `user` steken.

## Examples

Voorbeeldbestanden bij alle class-files

## Waarom kiezen voor symlinks

"Symlinks" staat voor symbolische links, je kan het vergelijken met een loophole of shortcut naar een map of bestand dat elders op je computer staat.
De reden waarom deze nuttig zijn in dit geval is om ervoor te zorgen dat jouw computer steeds de laatste versie van deze bestanden gebruikt.
Om de laatste versie te verkrijgen, pull je deze repository en volg je de instructies om de texlive database te updaten (zie hierboven).
