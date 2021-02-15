~*Koós Antal, 2021. február 15., v1.0.1, https://eutlantis.k2os.hu/szoftver*~

# Ecset helyett használja a *Pandoc's Markdown*-t!
___

## Bevezetés

Amióta a legutolsó könyvemet teljes egészében a *Pandoc's Markdown* nyelven írtam, rászoktam hogy minden írásomat (mint például ezt), de még az apró-cseprő feljegyzéseimet is ezzel a jelölőnyelvvel (*markup language*) rögzítem. Sokféle jelölőnyelv létezik, például ilyenek a *html, xml, svg, LaTeX*, amelyek közül talán a legelső a legismertebb, mivel az internet böngészésekor elsősorban ilyen formátumú dokumentumokkal találkozunk. Ha a böngészőben megnézzük egy oldal forrását (*View page source*), akkor rémisztő dolgokkal szembesülünk; még ha el is tekintünk a beillesztett programkódoktól (*JavaScript*), akkor is ott marad egy nagy csomó ún. címke (*tag*), mint például a `<h1>, <div>, <p>, <span>, <img>, <a>, <code>, <td>, <ul>, <li>`, és amelyek még olyan további jellemzőkkel is bírhatnak, mint például `class, id, alt, src, href, title`. Szerintem csak kevesen vannak azok, akik, nem földi halandók lévén, műveiket (könyvet, szakdolgozatot) képesek ily módon, közvetlenül *html*-ben rögzíteni, mert a lényegi mondanivalóhoz nem tartozó formai elemek láttán megbicsaklik a gondolat. \
Természetesen e helyett választhatjuk valamelyik irodai programcsomagot (LibreOffice, MS Office), hiszen rendkívül sok funkcióval rendelkeznek, és az általuk készített dokumentumot számtalan más formátumba exportálhatjuk, de egyrészt, sokunknak még az ikonokra kattintgatás vagy a stíluselemeknek gyorsító billentyűkkel történő kiválasztása is bosszantóan körülményesnek bizonyul (persze megfelelő stíluslapok és szerkesztési technika alkalmazásával ezen sokat lehet javítani), másrészt, nem mindig tudunk teljes kontrollt gyakorolni a dokumentum szerkezetét illetően (ami persze nem is mindig szükséges). \
Jó lenne, ha a két véglet között lenne valamilyen köztes eljárás.

Hasonló gondolatok foglalkoztathatták *John Gruber*-t és *Aaron Swartz*-ot, amikor 2004-ben megalkották a *Markdown* jelölőnyelvet, amelynek segítségével egy egyszerű szövegszerkesztőben (*plain text editor*, például: Kate, Gedit, Geany, Notepad++, vim), amilyeneket rendszerint programkódok írására is használunk, bizonyos jelek és jelcsoportok megfelelő elhelyezésével formázási utasításokat helyezhetünk el a szövegben, amelyből azután egy konvertáló programmal *html* vagy más formátumú fájlt állíthatunk elő. Miért jobb ez, mint közvetlenül *html* címkéket és az ahhoz tartozó tulajdonságokat beilleszteni a szövegbe? A lényeg a megvalósítás részleteiben rejlik: a jelölésmód úgy került kialakításra, hogy azt alkalmazva a szöveg nem válik "olvashatatlanul" feldarabolttá, és ráadásul a jelek beszúrása is csak minimális plusz munkával jár. A szerkesztőprogramban ugyan nem látjuk a formázott szöveget "élő valójában", de egyrészt egy konvertáló programmal hipp-hopp előállíthatjuk a *html* kódot, aminek a megjelenítését egy böngészőben azonnal ellenőrizhetjük, másrészt, ezek az "egyszerű" szerkesztőprogramok már nem is olyan egyszerűek, hiszen mindenféle programnyelvhez, amibe a jelölőnyelvek is beleértendők, szintaxis szerinti színezést tudnak rendelni, ami által a *Markdown*-ban írt szövegünk jól áttekinthetővé válik, sőt olvashatóbb lesz a jelölőnyelvet nem használónál.

A *Markdown* jelölőnyelvnek a későbbiekben több, kissé különböző változata jött létre, amelyek közül némelyiknek a használata, az előállítandó szövegek tartalmától és természetesen a megszokástól függően, kényelmesebbnek bizonyulhat, mint a többié. Tovább bonyolította a helyzetet, bár nem okozott bábeli mértékű zűrzavart, hogy egyiket-másikat újabb jelölési módokkal, ún. kiterjesztésekkel is kibővítették. Amint már említettem, én a [Pandoc's Markdown](https://pandoc.org)-t kedvelem, amelyet a matematikai logikával is foglalkozó *John MacFarlane* filozófiaprofesszor hozott létre 2006-ban. Ez lényegében az eredeti *Markdown* olyan továbbfejlesztett változata, amelyik a leggyakoribb kiterjesztések és "tájszólások" használatát is "érti". De a professzor nem csak a jelölőnyelvet alkotta meg, hanem kifejlesztette a *pandoc* nevű nyílt forrású programot is, amellyel a *Pandoc's Markdown*-ban írt szöveget más jelölőnyelvekre lehet konvertálni; több formátumpárnál az átalakítás mindkét irányban működik.

Ebben az írásban ugyan csak egy rövid ízelítőt adok a lehetőségekből, ám ezekkel az ismeretekkel már bátran el lehet kezdeni a nyelv használatát, mert egyrészt, sok esetben  nem is lesz szükség további elemek elsajátítására, másrészt, a *pandoc* honlapján, ahol minden nagyon részletesen dokumentálva van, a hiányzó információ megkereshető. \
Az alábbiakban erősen szubjektív benyomások alapján felsorolom, hogy a *Pandoc's Markdown* jelölőnyelvet én mikor szeretem használni:

- azon feljegyzések, leírások készítésénél, amiket ugyan nem szükséges konvertálni semmilyen más formátumba, de egy olyan jobban áttekinthető dokumentumra vágyom, amit a  szövegszerkesztő a *Markdown*-ban írt szöveg szintaxis szerinti színezése révén biztosítani képes;
- amikor a szövegből később *epub* vagy *html* formátumú dokumentumot is elő szeretnék állítani;
- amikor a végleges szöveget egy olyan markdown "tájszólásban" kell produkálnom, amit nem ismerek vagy nem szeretek; ekkor majd konverzióval hozom azt létre;

Ha azonban nem "folyó" szöveget kell előállítani, hanem azt oldalakra kell tördelni, például *pdf* állományt kell készíteni, akkor az irodai programcsomagokkal valószínűleg könnyebben boldogulhatok. \
Az említett szintaxis szerinti színezés automatikusan működésbe lép, ha az írásunkat olyan fájlnéven mentjük el, ami *.md*-re végződik.

*(A fenti felsorolás csupán az én gyakorlati szükségleteimet tükrözi, ami jelentősen eltérhet a kedves olvasóétól, és ez esetben mindenképpen javaslom a Pandoc honlapjának áttekintését, mert ott nagy valószínűséggel a saját igényeinek kielégítésére vonatkozóan is talál információt. A nagyszerű LaTeX jelölőnyelv használatában gyakorlott olvasó elcsábítása nem volt célom:-)*


## A *pandoc* telepítése

Ahhoz, hogy a *Pandoc's Markdown* nyelven írhassuk műveinket, nincs szükségünk magára a *pandoc* programra, azt csak akkor kell igénybe vennünk, amikor a szöveget valamilyen más formátumba szeretnénk átalakítani. \
A [program honlapján](https://pandoc.org/installing.html) több operációs rendszerhez, így a Windows-hoz és Linuxhoz is, fellelhetők a telepítő fájlok, de a programot sok Linux disztribúció már eleve tartalmazza, tehát az a csomagkezelővel felrakható, bár ekkor valószínűleg nem a legfrissebb verziót fogjuk megkapni. \
A telepítés után próbáljuk ki parancssorban az alábbiakat:

    pandoc --version
    pandoc --list-input-formats
    pandoc --list-output-formats
    pandoc --help
    man pandoc  # Linuxon


## A leggyakrabban használt jelölések

Amint azt az irodai szövegszerkesztők használatakor is javasolják, hogy ha a tartalmat nem szükséges valamilyen struktúrába szervezni (listába, táblázatba, stb.-be), akkor folyó szöveget írjunk, azaz ne vigyünk be sortöréseket. Így, ha konvertáljuk a dokumentumot, a tördelést az új formátum által megkívánt módon majd a *pandoc* vagy más programmal elvégeztethetjük. A folyó szövegek görgetés nélkül történő kényelmes megtekinthetőségéhez azonban állítsuk be az egyszerű szövegszerkesztőben, hogy az, a beillesztett sortörések hiányában is, a szöveget tördelve (*wrap*) jelenítse meg. \
Egyébként, ha sortöréseket illesztünk egy paragrafusba, akkor például a *html* formátumba történő konvertáláskor azok nem kerülnek figyelembevételre. Többször előfordul azonban, hogy mégis szeretnénk egy mondatot a paragrafus elején kezdeni, és akkor ezt úgy tehetjük meg, hogy az előző mondatot a visszavágás jelével zárjuk `'\'`. Ebben az esetben, hogy a szerkesztőprogram is hűen tükrözze a tagolást, egy "valódi" sortörést is beszúrhatunk az *Enter* leütésével. \
Két paragrafus között legalább egy üres sort kell hagyni, de ha többet hagyunk ki, akkor azok összevonásra kerülnek egyetlenbe. \
Hasonlóan, ha a szavak közé egynél több szóközt írunk, azokból csak egy fog megmaradni, de a `'\ '` jelpárral egy "el nem dobható" szóközt kényszeríthetünk ki. \
Lehet, hogy mindez bonyolultnak tűnik, de a gyakorlatban hamar megszokja az ember; az alábbi képpel, amelyen további jelkombinációk is találhatók, illusztráljuk az elmondottakat:

![1. kép](images/pandoc_img1.png)

A fenti szöveg *html*-be történő konvertálás után így fog kinézni a böngészőben:

![2. kép](images/pandoc_img2.png)

A képeken látható, hogy egy szövegrészletet nem csak egyféleképpen lehet kihangsúlyozni. Amennyiben a kiemelendő szöveg tartalmazza a `'*'`-ot, akkor használhatjuk az `'_'` jelet, vagy fordítva, de egyébként ezeket a jeleket a `'\'` jellel megfoszthatjuk a különleges funkcióiktól, amire az alábbiakban láthatunk példákat:

![3.kép: A szövegszerkesztőben](images/pandoc_img3.png)

![4.kép: Átalakítás után a böngészőben](images/pandoc_img4.png)

Egyébként a `'\'` jel önmagát is megfosztja attól a különleges tulajdonságától, hogy megfoszt más jeleket a különleges tulajdonságaiktól. Próbáljuk ki a szerkesztőprogramban, amikor ő "foszt":  `'__\__'`, és amikor saját magát bírálja felül: `'__\\__'`

A fenti képeken a címek megadásának módja is észrevehető, a főcímet egy kettős kereszttel, az alcímeket kettővel vagy többel kell bevezetni. Az aláhúzást legalább három `'_'` jellel kell előírni.

Elhelyezhetünk a szövegben alsó (*subscript*) vagy felső (*superscript*) pozíciójú részeket, amelyek jól használhatók indexek megjelenítéséhez. A kívánt részt két `'~'` illetve két `'^'` jel közé kell illeszteni, és ha szóközöket is közéjük szeretnénk tenni, akkor azokat a már korábban említett módon, a visszavágás jelével kell megadnunk: `'\ '` \
Például:

![5.kép](images/pandoc_img5.png)

![6.kép](images/pandoc_img6.png)


Egy valamirevaló műszaki dokumentáció vagy egy szakácskönyv nem létezhet felsorolás, azaz lista nélkül. Nézzük meg az alábbi szerkezetet, amelyben több lista került egymásba ágyazásra:

<table><tr><td>
~~~{ .markdown}
1. első főelem
2. második főelem
   - tétel
   - feltétel
   - letétel
     a. alfa
     b. béta
     c. gamma
     d. delta
        + άλφα
        + βήτα
        + γάμμα
        + δέλτα
          i.   1
          ii.  2
          iii. 3
               X.  10
               XI. 11
               XII. 12
3. harmadik főelem
   * Szevasz!
   * Helló!
4. negyedik főelem
~~~
</td><td>

![7.kép: lista](images/pandoc_img7.png)

</td></tr></table>

*(A bal oldalon lévő szöveget a vágólapon keresztül átmásolhatjuk a szerkesztőprogramba kipróbálásra.)* \
Figyeljük meg, hogy az alárendelt listákat bevezető karaktereknek a bennfoglaló lista első nem szóköz karakteréhez kell illeszkedniük. A felsorolásban alkalmazhatjuk az előzőekben említett jelöléseket (dőlt, subscript stb.) \
A konvertálás során a lista első elemének sorszámától, illetve betűs jelölésétől kezdve automatikusan történik a következő szám vagy betű meghatározása. Próbáljuk ki, hogy az előző példában a `3.`-at átírjuk `10.`-re, az `ii`-t pedig `vi`-re! \
Amennyiben két különállónak szánt listát (mindegy, hogy összetett vagy sem) közvetlenül egymás után helyezünk el, akkor közéjük nem elegendő üres sorokat beilleszteni, hanem (a *html* kódokban megjegyzések jelölésére használt) alábbi jelsorozatot is szerepeltetni kell elválasztóként, például:

~~~{ .markdown}
1. hétfő
2. kedd

<!-- -->
1. Monday
2. Tuesday
~~~

Egy másik szerkezettel, a "block qoute"-tal, nagyon egyszerűen, de ugyanakkor igen látványosan kiemelhetünk szövegtartományokat; ezt a sorok elejére helyezett `'>'` jelekkel tehetjük meg. Az alábbi képen figyeljük meg, hogy az üres sorokat is meg kellett jelölni:

![8.kép: "block qoute" a szerkesztőben](images/pandoc_img8.png)

![9.kép: "block quote" a böngészőben](images/pandoc_img9.png)


Az előzőekben szó esett arról, hogy a konvertálás után az egymást követő üres sorok és szóközök egyetlen egyre redukálódnak, ami egyrészt jó, mert a figyelmetlenségből vagy a nyers változatban az áttekintés megkönnyítése végett szándékosan otthagyott "űr" automatikusan eltüntetésre kerül, másrészt, nem jó, amikor az "üresség" jelentést hordoz. Az utóbbi esetre példa a programkódok tagolása is. \
Többféle szerkezettel is rábírhatjuk a konverziós eljárást arra, hogy egy adott szövegrészt egy az egyben, a megadott formában emeljen át az új dokumentumba:

- A "szó szerinti" (*verbatim*) jelöléssel, amivel a folyó szövegben két ``'`'`` (*backtick*) közé elhelyezett részt védhetjük, például: `` `sok szóköz    **nem kövér** nem módosít\\` `` \
  Amennyiben a védendő szöveg *backtick*-et is tartalmaz, akkor az elejére két *backtick*-et és egy szóközt írjunk, a végére pedig ugyanezt megfordítva. \
  A védett szöveg a konvertálás után általában más stílusban (betűkészlettel, színnel) fog megjelenni, ezért gyakran csupán emiatt is érdemes alkalmazni.

- Az *Indented code block* szerkezettel: így egy többsoros szövegrészt védhetünk, ha annak minden sorát négy szóközzel vagy egy tabulátornyival beljebb kezdjük:

   ![10.kép: Indented code block](images/pandoc_img10.png)

   Amennyiben a blokkot egy listában kívánjuk kijelölni, akkor ott a behúzást a lista sorszámozását követő első nem szóköz karaktertől kell számítani.

- A *Fenced code block* szerkezettel: e módon ugyancsak egy többsoros szövegrészt jelölhetünk ki három vagy több egymást követő `'~'` karakternek a szöveg első sora előtti, illetve a legutolsó sora utáni megadásával; fontos, hogy a kezdő és a záró karakterek számának egyeznie kell. Itt nem szükséges behúzást alkalmazni, hacsak nem egy listán belül kívánjuk elhelyezni a blokkot. A kódhoz különböző tulajdonságokat is kapcsolhatunk, amelyekkel azt tetszetős kinézettel ruházhatjuk fel:

[]{#pycode1}

  <table><tr><td>
  ~~~~{ .markdown}
  ~~~ {#pycode1 .python .numberLines startFrom="100"}
  #! /usr/bin/env python3
  import math, sys

  if len(sys.argv) == 2:
      try:
          print(math.sqrt(int(sys.argv[1])))
      except:
          print("?")
  ~~~
  ~~~~
  </td><td>

  ![11.kép: Fenced code block a böngészőben](images/pandoc_img11.png)

  </td></tr></table>

  *(A bal oldalon lévő szöveget a vágólapon keresztül átmásolhatjuk a szerkesztőprogramba kipróbálásra.)* \
  A kapcsos zárójeleket és az általuk közrezártakat nem kötelező használni. Most vegyük sorra a példában szereplő paramétereket:

    - .python: E programnyelv szintaxisának megfelelő színezési előírásokat kérünk a konverzió során elhelyezni a dokumentumban. A választható nyelveket és a színező stílusokat kilistázhatjuk:

            pandoc --list-highlight-languages
            pandoc --list-highlight-style

        A színező stílus kiválasztásáról a [*Markdown*-ból *html*-be](#markdown-ból-html-be) című fejezetben fogunk megismerkedni.

    - .numberLines: sorszámozást kérünk
    - startFrom="100": a sorszám kezdőértéke
    - #pycode1: azonosító (*id*), amelyre linkkel hivatkozhatunk a szövegből

  A majd a böngészőben megjelenített kódot vágólapon keresztül átmásolhatjuk egy kódszerkesztő programba, miközben megőrződnek a behúzások, de nem úgy a sorszámozás, azaz nem fog nehézséget okozni.


## Attribútumok, linkek, képek

A *Fenced code block* ismertetésénél láttuk, hogy kapcsos zárójelek között bizonyos tulajdonságokat rendelhetünk a blokkhoz, amelyek között szerepeltethető egy *id* is. Amikor az írásunkat egy másik formátumba konvertáljuk a *pandoc* programmal, akkor, ha az új formátum támogatja (például a *html*, *epub*), a címekhez automatikusan hozzárendelődik egy azonosító. Az *id* csupa kis betűvel, a speciális karakterek elhagyásával és a szavak kötőjelekkel történő összekapcsolásával képződik; például ezen írás és e fejezet címéhez ezek rendelődnek:

cím: Ecset helyett használja a *Pandoc's Markdown*-t! \
id: `#ecset-helyett-használja-a-pandocs-markdown-t`

cím: Attribútumok, linkek, képek \
id: `#attribútumok-linkek-képek`

Ezek az azonosítók hivatkozási pontként (horgonyként) szolgálhatnak, ha a konvertálás kimeneti formátuma ezt a funkciót támogatja. Például, ha a dokumentumot majd *html*-é alakítjuk, akkor ilyen linkeket készíthetünk:

~~~ {.markdown}
[Ugrás a doksi elejére](#ecset-helyett-használja-a-pandocs-markdown-t) \
Na meg ott van az az izgalmas [fejezet](#attribútumok-linkek-képek) is.
~~~

Ha nem tetszenek az automatikusan előállított azonosítók, akkor megadhatunk helyettük mást, közvetlenül a címek után a már ismert kapcsos zárójelek segítségével:

~~~ {.markdown}
# Ecset helyett használja a *Pandoc's Markdown*-t! {#doksi-eleje}
~~~

Nem csak a címekhez és a kódblokkokhoz, hanem tetszőleges szöveghez rendelhetünk azonosítót, sőt még szöveg sem kell hozzá:

~~~ {.markdown}
Itt ledobjuk a [horgonyt]{#anchor1}. \
[]{#anchor2} \
Ezekhez is készíthetünk valahol a szövegben linket. \
Ide töltsünk be egy jó hosszú szöveget...

Linkeskedünk: [link1](#anchor1) [link2](#anchor2)
~~~

*Html* vagy *epub* előállítását célozva, a kapcsos zárójelek közé *class* neveket is beírhatunk, amelyekre (a később tárgyalandó) *css* fájlban hivatkozhatunk; de akár  közvetlenül stíluselemeket is felsorolhatunk:

~~~ {.markdown}
Ezt majd [a *css* fájlban csinosítjuk]{ .piros .színes } \
Ezt itt azonnal [felcicomázzuk]{ style="color: orange; padding: 5em"}, bár jobb a *css* fájlt használni.
~~~

Mint a fenti példákon látható, nem kötelező *id*-ket megadni.\
Olyan linkeket is létrehozhatunk, amelyek az interneten vagy a fájlrendszerünkben lévő objektumokra mutatnak:

~~~ {.markdown}
A *Pandoc's Markdown* [honlapján](https://pandoc.org) minden információ megtalálható. \
Ezt a doksit [Ubuntun](Képek/Ubuntu.png) írtam.
~~~

A példában szereplő második link egy a fájlrendszerben létező képre mutat, amelyet csak akkor jelenít meg a böngésző, ha rákattintunk. Ám megtehetjük azt is, hogy a képet "beágyazzuk", azaz a megjelenített tartalom részévé tesszük, amihez csak egy felkiáltójelet kell a kifejezés elé illesztenünk:

~~~ {.markdown}
Ezt a doksit ![Ubuntun](Képek/Ubuntu.png) írtam.

![Ubuntun](Képek/Ubuntu.png)

Lorem ipsum.
~~~

A fenti példában a szögletes zárójelben megadott szöveg képaláírásként funkcionál, de csak akkor jelenik meg, ha a kép önálló paragrafust alkot, mint a második hivatkozásnál. \
Mind a képek, mind a linkek után, kapcsos zárójelek között megadhatunk tulajdonságokat.

## Konvertálás

A *pandoc* program *UTF-8* kódolású fájlokkal dolgozik, így ha nem ebben készítettük a dokumentumunkat, akkor azt a konvertálás előtt át kell ebbe kódolni (amit általában az egyszerű szövegszerkesztővel is megtehetünk, vagy esetleg az *iconv*  programmal), majd ha az eredményül kapott fájlra sem *UTF-8* kódolással van szükségünk, akkor azt meg vissza kell kódolni.

A *pandoc* programnak a dokumentum konvertálásánál sokféle parancssori kapcsolót megadhatunk, amelyek közül a négy legfontosabb: az átalakítandó fájl neve és annak a  jelölőnyelvnek a típusa, amiben íródott, illetve az új fájl neve és hogy milyen jelölőnyelven kerüljön létrehozásra. Azonban nem minden esetben van szükség az összes paraméter megadására, mert a program megpróbálja a formátumot a fájlnévből kitalálni. \
A `pandoc --list-output-formats` és a `pandoc --list-input-formats` parancsok által adott listából válogathatunk.

Bizonyos formátumokba történő konvertáláshoz a *pandoc*-nak további segédprogramokra lehet szüksége, amelyeket külön kell telepítenünk. Ebbe a körbe tartozik például a *pdf* formátum, amelynél a megfelelő eredmény eléréséhez több próbálkozásra-tesztelésre lehet szükség; de ebben az írásban nem kívánunk ezzel foglalkozni, a részletek a *pandoc* honlapján megtalálhatók.

Az alább következő részekhez javasolt elkészíteni a korábban említett jelölések felhasználásával egy *Pandoc's Markdown* nyelven készült fájlt, amire "doksi.md" néven fogunk a továbbiakban hivatkozni. \
A fájl átalakítása a *GitHub-Flavored Markdown*-ba az alábbiak szerint lehetséges:

    pandoc -t gfm  -o gites_doksi.md  doksi.md

A paraméterek magyarázata:

- -t gfm: (*to*) a megkívánt új formátum
- -o gites_doksi.md (*output*): az új fájl neve
- doksi.md: a konvertálandó fájl neve

Az előző parancsot írhattuk volna így is:

    pandoc -t gfm  -o gites_doksi.md  -f markdown  doksi.md

ahol az "f" (*from*) a konvertálandó fájlban alkalmazott jelölőnyelvet specifikálja, de a *pandoc* ezt az *.md* végződésből meg tudja állapítani. \
A fentiekben az új fájl megkívánt formátuma, mivel a neve ugyancsak *.md*-re végződik, szintén tudható, de a `-t gfm` opcióval előírjuk, hogy csakis a *GitHub-Flavored Markdown* által érvényesnek tartott jelölések kerüljenek bele. \
Érdemes a bemeneti fájlt az átalakítottal összehasonlítani, beolvasva azokat a szövegszerkesztővel vagy a [*meld* programmal](https://meldmerge.org/) \

Hasonlóan történik egy *Mediawiki* formátumú fájl létrehozása is:

    pandoc -t mediawiki  -o mediawiki_doksi.md  doksi.md

A LibreOffice program és az MS Office által kezelt *odt* illetve *docx* formátumú állományok előállítása:

    pandoc -o doksi.odt doksi.md
    pandoc -o doksi.docx doksi.md

Mindkét irodai programcsomag stílusokkal dolgozik, a *pandoc* által alapértelmezetten beállítottakat így kaphatjuk meg:

    pandoc -o mystyle.odt --print-default-data-file reference.odt
    pandoc -o mystyle.docx --print-default-data-file reference.docx

Létrehozva például a "mystyle.odt" fájlt, az abban lévő stílusokat a LibreOffice-ban történő módosítás (a fájl egyéb tartalma nem lesz a későbbiekben figyelembe véve) után átadhatjuk a *pandoc*-nak:

    pandoc -o doksi.odt --reference-doc=mystyle.odt  doksi.md

(Megjegyzés: A *pdf* formátum előállítása tehát úgyis lehetséges, hogy előbb *odt*-be vagy *docx*-be konvertálunk, majd a megfelelő irodai csomagba beolvassuk a fájlt és   exportáljuk *pdf*-be.)

## *Markdown*-ból *html*-be és *epub*-ba

Én magam legtöbbször arra használom a *pandoc*-ot, hogy *Pandoc's Markdown*-ból *epub*-ba vagy *html*-be konvertáljak. Az előbbiek alapján könnyen kitalálható, hogy a programot miként kell elindítani a *html* esetében:

    pandoc -o doksi.html  doksi.md

A "doksi.html" fájlt már meg tudjuk jeleníteni a böngészőben, de ha a szövegszerkesztőbe olvassuk be, láthatóvá válik, hogy, sok minden máson kívül, hiányzik az elejéről és a végéről a `<html>` illetve a `</html>` jelölés. Ez azért van így, mert a *pandoc* alapesetben részfájlokat állít elő, meghagyva számunkra a lehetőséget, hogy a fájlokat más dokumentumba beilleszthessük; de utasíthatjuk arra is, hogy önálló (*standalone*) fájlt állítson elő, beletéve abba minden szükséges elemet:

    pandoc -s -o doksi.html  --metadata title="Pandoc demo"  doksi.md

Ha a fenti parancsban elhagyjuk a `--metadata title` paramétert, akkor a program figyelmeztet annak hiányára (`<title>` *tag* hiánya), de ettől függetlenül elvégzi a munkát. Ha nincs szükségünk erre címre, és nem is adunk meg semmit, akkor az üzenetet elnyomhatjuk a `--quiet` paraméter megadásával, vagy azt is megtehetjük, hogy címként egyetlen szóközt adunk meg: `--metadata title=" "`

Az elkészült *html* fájl valamilyen alapértelmezett stíluselemekkel kerül megjelenítésre, amelyeket felülbírálhatunk egy általunk létrehozott *css* fájl megnevezésével:

    pandoc -s -o doksi.html --quiet  -H mystyle.css  doksi.md

A *css* fájlra a [Függelékben](#függelék-css) található egy példa. \
A programkódot tartalmazó kódblokkok színezéséhez, mint például a [*pycode1*](#pycode1)-hoz, különböző színezési stílusok közül választhatunk, amelyeket így tekinthetünk meg:

    pandoc --list-highlight-style

A listából a *tango* stílust kiválasztva így kell indítanunk az átalakítást:

    pandoc --highlight-style tango -s -o doksi.html --quiet  -H mystyle.css  doksi.md

A sok egyéb lehetőség mellett, tartalomjegyzéket is generáltathatunk a `--toc` megadásával, illetve a fejezetekhez sorszámot rendelhetünk a `--number-sections` opcióval. \
A fenti esetekben mindenhol csak egyetlen bemeneti fájlt adtunk meg, de többet is fel lehet sorolni, amelyeknek az átalakított másolatai majd a megadott sorrendben összefűzésre kerülnek; ezt könnyen kipróbálhatjuk a "doksi.md" állomány kétszeri szerepeltetésével:

    pandoc ... -H mystyle.css  doksi.md doksi.md


Az előzőekben elmondottak az *epub* készítésére vonatkozóan is igazak. Az alábbi, egy *epub*-ot előállító parancsban újdonság a `--toc-depth=3`, amivel megmondjuk, hogy a tartalomjegyzékbe csak azon fejezetcímek kerüljenek be, amelyek maximum három `#` jellel kezdődnek; az `--epub-cover-image=cover.jpg` a könyv címlapjának szánt képet jelzi; a `metadata.yaml` (lásd a  [Függelékben](#függelék-meta)) fájl pedig, ami elsőként szerepel az átalakítandó állományok között (és egyébként el is hagyható), az olyan adatokat tartalmazza, mint a könyv címe, az író neve, a könyv műfaja stb.; az ezután felsorolt fájlok mindegyike a könyv egy-egy fejezetét alkotja:

    pandoc  --highlight-style tango
            --number-sections
            --toc-depth=3
            -H mystyle.css
            --epub-cover-image=cover.jpg
            -o doksi.epub
            metadata.yaml
            doksi_01.md doksi_02.md ... doksi_15.md

            # doksi_[0-9][0-9].md


Korábban láttuk, hogy ha a képeket a `![képfelirat](kép_fájl_neve)` szerkezettel illesztjük a szövegbe, akkor azokat a tartalomba ágyazottan tekinthetjük meg; ha azonban *epub* állományt készítünk, akkor abba az így hivatkozott képfájlok ténylegesen is beágyazásra kerülnek.

Amennyiben a *html* vagy *epub* formátumra történő konverzión túl mást nem tervezünk, akkor akár  *html* kódot is szerepeltethetünk a bemeneti fájlban, ha feltétlen szükséges. \
A `-H` kapcsolót többször is alkalmazhatjuk egymásután, és akkor az így felsorolt fájlok tartalma a megadott sorrendben beírásra kerül a *html* `<head>` részébe, azaz nem csak *css*-t, hanem például `<script>` szekciót is beilleszthetünk.

## Táblázatok

Az előző fejezet végéhez kapcsolódva be kell vallanom, hogy bizony én a *Pandoc's Markdown* nyelven készült szövegben a táblázatokat *html* kóddal adom meg, mert
bármelyik *markdown* verzióval is próbálkozom, mindegyik igen nehézkesnek bizonyul a táblázatok megadási módját illetően. Bár vannak erre segédprogramok meg webes szolgáltatások, a *html* kódok használata sokkal gyorsabb és szinte elhibázni sem lehet. Az alábbi példából kiviláglik, hogy a *html* kódba beilleszthetjük a már megismert szerkezeteket is:


~~~~ {.markdown}
<table><tr><td>
~~~ {#pycode1 .python .numberLines startFrom="100"}
#! /usr/bin/env python3
import math, sys

if len(sys.argv) == 2:
    try:
        print(math.sqrt(int(sys.argv[1])))
    except:
        print("?")
~~~
</td><td>

![Ubuntu](Ubu.png)

</td>
<tr><td>

> Block quote \
> quote

</td><td style="text-align:center;vertical-align:middle;"> **BOLDog** [*Pandoc*](https://pandoc.org) </td>
</tr>
</table>
~~~~

És konvertálás után a böngészőben ezt látjuk:

![12. kép](images/pandoc_img12.png)


## Matematikai kifejezések

A *MathML* vagy a *(La)TeX* nyelvek segítségével matematikai kifejezéseket illeszthetünk a szövegbe. Ha a *TEX* nyelvet választottuk, akkor az azzal írt részeket a *pandoc* program, megadva neki a `--mathml` kapcsolót, átalakítja *MathML* nyelvre:

    pandoc -s --quiet --mathml -H mystyle.css -o doksi.html  doksi.md

Sajnos, a *MathML* kódok megjelenítésére még nem mindegyik böngésző képes, de például a *Firefox* és a *Safari* igen. A többi böngészőt a [MathJax](https://www.mathjax.org/) *JavaScript* nyelven írt programmal lehetséges felokosítani, ami a már említett két böngészővel is együtt tud működni, és képes kezelni mind a *MathML*, mind a *TeX* jelöléseket. Ehhez a `--mathjaxx` paraméterre van szükségünk:

    pandoc  --highlight-style tango  -H mystyle.css  -o doksi.html
            --mathjax="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"
            doksi.md

A `mathjax`-szal  meghatároztuk, hogy melyik *MathJax* szkriptet kell betölteni és hogy  honnan; másik szkriptet és akár lokális útvonalat is specifikálhatunk, de itt a részletekbe nem mélyedünk el, azok a *MathJax* honlapján fellelhetők. (Egyébként a példában szereplő megoldást alkalmazva, a böngészőben a matematikai kifejezésen az egér jobb gombjával történő kattintás után egy menü fog felugrani.)

De nézzünk végre egy *TeX*-es kifejezést, írjuk be például ezt a "doksi.md" fájlba, majd próbáljuk ki a fenti konverziókat:

    *LaTeX*: $\sqrt{2}\sqrt[5]{3}$

![13. kép: Képlet a Firefox-ban, stílust alkalmazva](images/pandoc_img13.png)

Az e-könyv-olvasókkal hasonló a helyzet, mint a böngészőkkel, nem mindegyik képes a *MathML* kódokat önállóan megjeleníteni, de például a [Calibre](https://calibre-ebook.com/) beépített *E-book viewer*-e van olyan ügyes, mert a *MathJax* programot beleintegrálták. A *TeX* kifejezést tartalmazó fájl konvertálása tehát így történhet:

    pandoc  --highlight-style tango  -H mystyle.css  -o doksi.epub
            --mathml  --metadata title="Pandoc demo"  doksi.md


## Függelék

### Stílus fájlok

A *css* fájlban szerepeltethetjük azokat az *id*-ket és *class*-okat is, amelyeket a kapcsos zárójelekben megadtunk. Egy példa a "mystyle.css" fájl egy lehetséges megvalósítására:

~~~ {#függelék-css .css}
<style>
h1,h2 {
    display: block;
    color: #37474f;
    font-weight: bold;
}
h1 {
    font-size: 1.8em;
    margin: 1em 0 0.2em 0;
}
hr {
    margin: 0 0 2em 0;
    color: #37474f; }
h2 {
    font-size: 1.2em;
    margin: 1em 0 0.8em 0;
}
blockquote {
    border-left: 0.5em solid #64285e;
    background-color: lightgrey;
    font-style: italic;
    padding-left: 1em;
}
img {
    margin: 1em auto 0.2em auto;
    display: block;
}
figcaption {
    text-align: center;
    font-size: small;
    font-style: italic;
    margin-bottom: 1em;
}
table {
    margin: 0em auto 2em auto;
}
code {
    font-size: 1.2em;
}
math, .MJX-TEX {
    font-weight: normal;
    font-size: 2em;
    color: darkgreen;
}
</style>
~~~

### Metaadatok

A metaadatokat többféleképpen is átadhatjuk a *pandoc*-nak, az alábbiakban ezt egy *yaml* formátumú fájl segítségével tesszük meg:

~~~{#függelék-meta .yaml}
---
title:
  - type: main
    text: Az özvegy bosszúja
  - type: subtitle
    text: 101. cenzúrázott kiadás
creator:
  - role: author
    text: Riska
rights: Minden jog fenntartva © 2021 Riska
lang: hu
type: FIC022030
subject: krimi, thriller
description: Könnyed kikapcsolódást nyújtó ponyvaregény
...
~~~

A fenti szövegben a `---` és `...` az adatok kezdetét és a végét jelöli. Vigyázat, a *yaml* formátumú fájl érzékeny az indentálásra, a sorok hosszára és még egyebekre is; mindenképpen tájékozódjunk a képzését illetően!
