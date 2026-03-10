# Hvordan kom vi hertil?

Den 8. oktober 2012 sad en 64-årig canadisk professor ved navn Geoffrey Hinton i sit kontor på University of Toronto og ventede på resultater. Hans hold havde tilmeldt sig en konkurrence som de fleste eksperter betragtede som lidt af en parentes — en årlig kappestrid om at genkende billeder, arrangeret af Stanford-universitetet under navnet ImageNet Large Scale Visual Recognition Challenge. Konkurrencen gik ud på at lære et computersystem at identificere genstande på fotografier: hunde, biler, stole, frugter, menneskeansigter. Det lød banalt. Det var ikke banalt.

Hinton og hans to studerende, Alex Krizhevsky og Ilya Sutskever, havde bygget noget anderledes end alle andre deltagere. De fleste hold brugte håndkodede regler — eksplicitte instrukser til computeren om hvad der kendetegner en kat, eller hvad der adskiller en lastbil fra en personbil. Hintons system lærte selv. Det var bygget op som lag af matematiske knudepunkter der skulle efterligne måden neuroner i hjernen er forbundet på. Et **neuralt netværk**, som det hed — en idé der havde eksisteret siden 1950'erne, men som hidtil aldrig rigtig havde virket i stor skala.

Resultatet kom. Fejlprocenten for Hintons system lå på 15,3. Alle andre hold lå på 25 til 26. Vinderen var ikke bare lidt bedre. Vinderen var ti procentpoint bedre. Det var som om et holds løber kom i mål halvandet minut før alle andre i et maraton. Eksperterne stirrede på tallene og forsøgte at forstå hvad de så.

Det var begyndelsen på det vi nu kalder **dyb læring**. Og det var begyndelsen på den verden du lever i i dag.

***

For at forstå hvorfor den oktoberdag i Toronto var så afgørende, er du nødt til at gå langt tilbage. Ikke til 2012. Ikke til 1990'erne eller 1980'erne. Du skal helt tilbage til 1950, til et kontor i Manchester, England, hvor en 38-årig matematiker sad og formulerede et spørgsmål som ingen nogensinde var blevet enige om, men som alle siden har måttet forholde sig til.

Alan Turing hed han. Han havde under Anden Verdenskrig brudt den tyske Enigma-kode og dermed sandsynligvis afkortet krigen med adskillige år og reddet hundredtusinder af liv. Nu sad han og tænkte på noget andet. Han publicerede i 1950 et papir i tidsskriftet Mind under titlen "Computing Machinery and Intelligence", og papiret åbnede med fire ord der siden er blevet citeret i tusindvis af bøger, artikler og forelæsninger: Can machines think?

Turing vidste at spørgsmålet var problematisk. Hvad er "tænkning"? Hvad er "maskiner"? Han omformulerede det til en konkret test: kunne et menneske ved at stille skriftlige spørgsmål afgøre om det talte med en computer eller et andet menneske? Hvis ikke, var der vel noget der mindede om intelligens til stede. Testen hed efterfølgende **Turing-testen**, og den satte dagsordenen for en hel videnskab der endnu ikke eksisterede.

Seks år senere fik videnskaben et navn. I sommeren 1956 mødtes en lille gruppe forskere på Dartmouth College i New Hampshire for at arbejde på et problem de formulerede i deres ansøgning om støtte til mødet: at ethvert aspekt af læring eller enhver anden egenskab ved intelligens kan beskrives præcist nok til at en maskine kan simulere det. Den 29-årige John McCarthy, som havde organiseret mødet, kaldte det felt de var ved at grundlægge for **kunstig intelligens**. Marvin Minsky var med. Claude Shannon var med. Det var et højsommerligt møde af optimistiske unge mænd der mente at de om ti år ville have løst problemet.

De tog fejl. Men de gav verden et begreb.

***

De første årtier af kunstig intelligens var præget af en rytme som historien siden har gentaget. Optimisme. Finansiering. Resultater der imponerede i laboratoriet. Og derefter: virkelighed.

I 1960'erne og det tidlige 1970'erne fløj løfterne højt. Programmer der løste algebraopgaver. Systemer der spillede dam på niveau med dygtige amatørspillere. Robotter der bevægede sig i simple omgivelser. Den amerikanske forsvarsforskningsstyrelse DARPA pumpede penge ind. Britiske universiteter fulgte efter. Minsky og McCarthy forudsagde at en maskine med menneskelig intelligens var inden for en menneskealder. De var ikke alene om at mene det.

Så kom vinteren. Ikke en kold sæson, men det udtryk som forskerne siden har brugt om de perioder hvor løfterne bristede, finansieringen forsvandt og feltet trak sig ind i sig selv. Den første store **AI-vinter** ramte i midten af 1970'erne. Rapporten fra det britiske Science Research Council i 1973, skrevet af den respekterede matematiker James Lighthill, konstaterede koldt at kunstig intelligens ikke havde leveret hvad den lovede og sandsynligvis aldrig ville gøre det på de mest ambitiøse områder. Finansieringen styrtdykkede. Projekter lukkede. Studerende valgte andre specialer.

Der kom en ny blomstring i 1980'erne. **Ekspertsystemer** hed den nye teknologi — computerprogrammer der kodede ekspertviden ind i lange rækker af regler, så maskinen tilsyneladende kunne rådgive om medicin, juridiske spørgsmål eller geologiske undersøgelser. Japanske myndigheder lancerede det enorme "Femte Generation"-program med løfter om at bygge intelligente maskiner inden 1990. Virksomheden Digital Equipment Corporation tjente hundredvis af millioner dollars på ekspertsystemet XCON, der automatisk konfigurerede computerbestillinger — det var virksomt og det virkede. Entusiasmen vendte tilbage.

Og derefter: vinteren igen. I slutningen af 1980'erne og begyndelsen af 1990'erne kollapsede markedet for ekspertsystemer. De var dyre at bygge, dyre at vedligeholde og skrøbelige over for situationer de ikke var specifikt programmeret til. Det japanske program leverede ikke sine løfter. En ny generation af billigere computere fra Apple og IBM kørte software som de dyre, specialbyggede AI-maskiner ikke kunne konkurrere med på pris. Institutioner trak støtten tilbage. Feltets navn blev nærmest et skældsord i visse kredse.

Midt i den anden vinter sad Geoffrey Hinton og arbejdede videre. Han var ikke den eneste. En lille gruppe forskere troede fortsat på de neurale netværk — de matematiske strukturer der efterlignede hjernens arkitektur. De fleste af deres kolleger betragtede dem med et venligt skuldertræk. Det virkede bare ikke godt nok. Ikke endnu.

***

Hvad Hinton og hans medskyldige i 2012 havde, som alle de tidligere generationer manglede, var ikke en ny idé. Det var magt.

Computerkraft. Data. De to ingredienser der forvandler en teori til en virkelighed.

Internettet havde i det foregående årti produceret en mængde data som menneskeheden aldrig havde set magen til. Milliarder af fotografier på Flickr og Facebook. Millioner af tekster på Wikipedia. Oceaner af søgninger, klik, køb og samtaler. Og grafikkort — de chips der var designet til at beregne computerspilgrafik ved at lave millioner af parallelle beregninger simultant — viste sig at være præcis hvad neurale netværk havde brug for. Ikke de hurtigste chips til en enkelt beregning. De hurtigste chips til parallel matematik.

Krizhevskys og Sutskevers system i Toronto, som kom til at hedde AlexNet, brugte to grafikkort koblet sammen. Det lyder ubetydeligt. Det var en revolution. For de neurale netværk som Hinton og hans kolleger havde tegnet på papiret i årevis, krævede netop den slags beregningskraft. Pludselig fandtes den. Pludselig virkede det.

Hinton var ikke overrasket. Han havde ventet i årtier. Han havde troet på de neurale netværk i de år da alle andre vendte ryggen til dem — da finansieringen gik til ekspertsystemer, da hans artikler havde svært ved at komme igennem peer review, da yngre og mere pragmatiske forskere sagde at neurale netværk var en romantisk idé der ikke fungerede i praksis. Han havde arbejdet videre alligevel. Det er det slags stædighed historien belønner — ikke altid, men indimellem.

Efter 2012 gik det hurtigt. Tech-giganter der havde fulgt konkurrencen med halvt lukkede øjne åbnede dem på vid gab. Google hentede Hinton til sit AI-laboratorium i 2013. Facebook grundlagde sin AI-forskningsenhed samme år under ledelse af Yann LeCun, en af Hintons mangeårige allierede inden for neurale netværk. Ilya Sutskever, Hintons studerende, endte som en af grundlæggerne af OpenAI. Universiteter og virksomheder kastede sig over dyb læring med en intensitet der mindede om en goldrush. Og resultaterne strømmede ind. Billedgenkendelse. Stemmegenkendelse. Oversættelse. Medicinsk diagnostik. Proteinstrukturforudsigelse. Ét domæne efter det andet slog grænser der hidtil havde syntes umulige.

***

Så kom marts 2016. Og et spil der hedder Go.

Go er et brætspil med rødder i Kina for over to tusind år siden. Reglerne er enkle: to spillere placerer skiftevis sorte og hvide brikker på et bræt med 19 gange 19 felter, og målet er at omringe modstanderens brikker og erobre territorium. Men den tilsyneladende enkelhed gemmer en kompleksitet der gør skak til et komparativt overkommeligt problem. Antallet af mulige spillesituationer i Go overstiger antallet af atomer i det observerbare univers. Den metode computere bruger til at spille skak godt — gennemgå alle mulige træk og vælg det bedste — virker slet ikke i Go. Spillet kræver noget der ligner intuition.

Eksperterne sagde at en computer aldrig ville slå verdenselitens Go-spillere inden for ti år. Måske aldrig.

Den 9. marts 2016 spillede Lee Sedol, en sydkoreansk Go-mester betragtet som en af de tre bedste spillere nogensinde, det første af fem partier mod AlphaGo, et system bygget af det britisk-amerikanske selskab DeepMind, som Google havde opkøbt to år tidligere. Kampen blev transmitteret direkte til millioner af seere. Kommentatorer sad klar med ekspertanalyser. Spillere fra hele verden fulgte med. Lee Sedol havde forberedt sig i måneder og sagt offentligt at han forventede at vinde 5-0 eller i det allerværste fald 4-1.

Lee Sedol tabte parti et. Han tabte parti to. Og parti tre. 3-0.

Han sad fortabt over brættet. De pauser der er naturlige i Go, de minutter en stærk spiller bruger på at meditere over positionen og tænke frem, de lod nu anderledes ud. Lee Sedol kæmpede med noget han ikke kunne se. Modstanderens træk var teknisk korrekte, men de fulgte ikke den logik han kendte. De overraskede ham. Det var ikke fordi AlphaGo spillede vildt eller uortodokst. Det var fordi systemet spillede med en præcision der lå hinsides hvad den menneskelige intuition kan gribe.

Han vandt parti fire. Den ene sejr fik Lee Sedol til at græde. Det siger noget om hvad der stod på spil. Det siger noget om hvad vi allerede vidste vi var ved at miste.

Lee Sedol tabte det femte og afgørende parti. AlphaGo vandt serien 4-1. Lee Sedol annoncerede i 2019 sin tilbagetrækning fra professionelt Go med ordene at AI er "en enhed der ikke kan overvindes". Han var 36 år gammel.

AlphaGo var ikke bare en teknisk bedrift. Det var et symbol. Det viste at dyb læring ikke bare kunne kopiere det vi allerede vidste — det kunne finde løsninger som mennesker aldrig havde tænkt på. I parti to mod Lee Sedol spillede AlphaGo et træk i femte omgang som kommentatorerne i transmissionen kaldte en fejl. Eksperterne lo. Tyve minutter inde i partiet begyndte det at gå op for dem hvad systemet havde set. Det var ikke en fejl. Det var et genialt træk som ingen menneskelig spiller nogensinde ville have overvejet, fordi det lå langt uden for det intuitivt tilgængelige. AlphaGo havde fundet det ved at simulere millioner af partier mod sig selv og lære hvad der faktisk virker — ikke hvad mennesker tror virker.

***

Fra 2016 til 2022 skete der noget som teknologihistorien sjældent ser: et felt der allerede var i hurtig udvikling begyndte at accelerere endnu hurtigere. Og drivkraften var ikke et nyt teoretisk gennembrud. Det var skala.

**Skalerings-hypotesen** er navnet på den antagelse der kom til at styre hele sektoren i disse år: at større systemer trænet på mere data systematisk bliver bedre. Ikke bare lidt bedre. Meget bedre. OpenAI, et laboratorium grundlagt i San Francisco i 2015 af en gruppe der inkluderede Elon Musk og Sam Altman, testede hypotesen systematisk. Deres GPT-serie — systemer der lærte at forudsige det næste ord i en tekst ved at gennemgå kolossale mængder af skreven menneskelig tekst — voksede fra version til version og imponerede med resultater der overraskede selv dem der havde bygget dem.

GPT-2 fra 2019 var så overbevisende i sin sprogproduktion at OpenAI hesiterede ved at offentliggøre den fulde version. De frygtede misbrug. GPT-3 fra 2020 var ti gange større og producerede tekster som mange journalister og forfattere ikke umiddelbart kunne skelne fra menneskers. Det kunne skrive brugbar programkode. Det kunne sammenfatte juridiske dokumenter. Det kunne løse aritmetiske opgaver og imitere Shakespeare eller Hemingway med en troværdighed der var ubehagelig at betragte. Ingen havde eksplicit lært det disse ting. Det havde lært dem på vejen mod at forudsige det næste ord.

Men det var ikke den tekniske progression der ændrede verden. Det var den dag i november 2022 da OpenAI åbnede en enkel hjemmeside for offentligheden og kaldte produktet ChatGPT.

Du kan måske huske det øjeblik. Mange mennesker kan. Det var ikke en forskeranmeldelse eller en artikel i et fagtidsskrift. Det var en chatboks. Du åbnede en browser, gik ind på siden og begyndte at skrive. Og systemet svarede. Det forklarede, det argumenterede, det digtede, det oversatte, det opsummerede, det kodede. Det var ikke perfekt. Det hallucinerede fakta og fremstillede dem med selvtillid. Det havde grænser. Men det virkede som intet nogen nogensinde havde set.

Fem dage efter lanceringen havde ChatGPT en million brugere. To måneder inde havde det hundrede millioner. Det tog Instagram to og et halvt år at nå det samme antal. TikTok ni måneder. ChatGPT to måneder. Det var den hurtigste adoption af en forbrugerteknologi i historien.

Hvad skete der egentlig den nat? Teknologisk set ikke meget nyt. Sprogmodeller af denne type og styrke havde eksisteret i årevis. Forskerne og ingeniørerne vidste hvad de kunne. Virksomheder som Google og Meta havde bygget tilsvarende systemer men valgt at holde dem tilbage af frygt for fejltagelser og omdømmeskade. Men for den brede offentlighed var det som om en dør der altid havde stået på klem pludselig swingede op og ikke lukkede igen.

Reaktionerne kom i bølger. Begejstring. Skepsis. Frygt. Lærere spurgte om skriftlige opgaver og eksamener stadig gav mening. Advokater diskuterede ophavsret til AI-genereret indhold. Journalister spurgte om redaktioner ville overleve. Filosoffer genoptog en årtier gammel diskussion om hvad forståelse egentlig er, og om noget der producerer sammenhængende tekst uden en hjerne kan siges at forstå noget som helst. Og politikere — de fleste af dem — spurgte med stigende uro hvad det overhovedet var, og hvem der egentlig var ansvarlig for det.

I marts 2023 udgav OpenAI GPT-4. Det var markant stærkere end sin forgænger. Det bestod den amerikanske advokateksamen med en score i den øverste tiendedel af alle testtagere. Det klarede sig i den øverste procentdel i biologi og kemi. Det løste medicinsk faglige opgaver på et niveau der i visse evalueringer matchede erfarne læger. Det forstod billeder — du kunne nu vise det et røntgenbillede eller et diagram og bede det analysere hvad det så. Og det var langt bedre til at undgå de mest åbenlyse fejltagelser og fabrikationer der havde plaget forgængerne. Ikke fri for dem. Men bedre.

Samme år begyndte regeringer verden over at handle med en hast der afspejlede hvad der stod på spil. Den europæiske AI-forordning, der havde ligget til langsom behandling siden 2021, fik ny fart og blev vedtaget i 2024. Den amerikanske præsident udstedte en eksekutivordre om kunstig intelligens. Det britiske parlament nedsatte udvalg. I Danmark begyndte kommuner og ministerier at udstikke retningslinjer for ansvarlig brug i den offentlige sektor. Det politiske system er designet til at reagere langsomt og omhyggeligt. Teknologisk forandring bevæger sig hurtigt og hensynsløst. De to hastigheder passer dårligt sammen. Det er en af de grundlæggende spændinger vi lever med nu.

***

Hvorfor var 2022 anderledes end alle de tidligere AI-foråre der altid var endt i vinter?

Det er det vigtige spørgsmål. Det ærlige svar er at vi ikke med sikkerhed ved det. Men vi kan pege på noget.

For det første: fundamentet. I 1960'erne og 1980'erne byggede AI-forskerne på håndkodede regler og begrænset data. De systemer der virkede i laboratoriet, virkede fordi problemet var snævert nok til at det lod sig løse med eksplicitte instrukser. Verden udenfor laboratoriet var aldrig så snæver. I dag træner sprogmodellerne på det meste af internettets tekst. De har set mere skreven menneskelig tanke end noget menneske nogensinde kan læse. Det er ikke en regelbaseret tilgang. Det er en lærende tilgang i en skala som 1980'ernes ekspertsystemer aldrig nåede.

For det andet: chips. Nvidias grafikkort er i dag designet med AI-træning som eksplicit formål, ikke som en sideeffekt af computerspilsindustrien. Den regnekraft der er tilgængelig for et velfunderet selskab i 2024 adskiller sig fra 2012 som 2012 adskilte sig fra 1980. Den adskiller sig fra år til år på en måde der ikke ligner nogen anden teknologisk progression i historien.

For det tredje: kapital. Tech-virksomhedernes samlede markedsværdi i begyndelsen af 2020'erne giver dem ressourcer til at bruge milliarder på at træne ét enkelt system. Microsoft investerede ti milliarder dollars i OpenAI. Google svarede med sin egen massive satsning. Meta åbnede sin Llama-serie delvist for offentligheden. Startups som Anthropic, Mistral og Cohere rejste kapital i en størrelsesorden der næsten ingen paralleller har i teknologihistorien. Kapløbet er reelt. Det accelererer.

Men advarselssignalet er også reelt. Historien kender dette mønster. Overoptimisme er kunstig intelligens' arvesynd. Turing mente at problemet var løst inden 1970. Minsky satte ti år på en menneskelig intelligens. Dartmouth-folkene tænkte et enkelt sommermøde ville give retningen. De tog alle fejl — ikke fordi de var dumme, men fordi problemet var fundamentalt anderledes end de troede.

Ingen kan i dag garantere at vi ikke er på vej ind i en ny vinter. At de sprogmodeller vi kender støder mod et loft. At skalerings-hypotesen en dag ikke holder mere. At løfterne om systemer der handler selvstændigt over lange tidshorisonter, der forstår årsagssammenhænge dybere end mønstre i tekst, der overfører viden fra ét domæne til et andet som mennesker gør det — at disse løfter bliver til skuffelse.

Det er muligt. Det er bare heller ikke det eneste det er muligt.

For der er en afgørende forskel på situationen i dag og situationerne i 1970 og 1990. Dengang kollapsede feltet delvist fordi de underliggende teknologier ikke holdt. Ekspertsystemerne var principielt begrænset. Neurale netværk virkede ikke godt nok med den tilgængelige regnekraft. I dag er begrænsningerne ikke principielle på samme måde. Internettet eksisterer og producerer mere data hvert år. Chips bliver hurtigere. Kapital strømmer ind. De systemer vi har, kan ting som intet system nogensinde har kunnet. Det grundlag er anderledes end ethvert tidligere grundlag i feltets historie.

Det betyder ikke at der ikke kommer en vinter. Det betyder at hvis der kommer en, vil vi sandsynligvis ikke starte forfra.

***

Der er en ting historien om kunstig intelligens fortæller os som er sværere at tale om end de tekniske gennembrud og de finansielle tal. Det handler om os.

Vi er den generation der lever i overgangen. Ikke dem der så begyndelsen — vi mødte ikke Turing, vi overværede ikke Dartmouth-mødet, vi var ikke med da AlexNet slog alle rekorder i 2012. Vi kom ind midt i filmen. Men vi er heller ikke dem der ser slutningen. Vi ved ikke hvad kunstig intelligens ender med at blive. Vi aner ikke om vi om tyve år kigger tilbage på denne periode som opdagelsernes tid eller som perioden inden katastrofen, som den industrielle revolutions gennembrydende årtier eller som overløbet inden boblen sprang.

Det er ubehageligt at befinde sig der. Vores hjerner er ikke bygget til at navigere i eksponentielle spring. Vi forstår skridt for skridt. Vi forstår årsag og virkning i menneskelig tidsskala. At en teknologi kan blive ti gange bedre på et år, og hundrede gange bedre på fem, er ikke en størrelse vi intuitivt griber. Det er netop det Lee Sedol opdagede ved brættet i marts 2016. Det var ikke bare at han tabte. Det var at modstanderen spillede med en logik han ikke kunne følge.

Geoffrey Hinton forlod Google i 2023 efter ti år i selskabet. Han ville tale frit om hvad han mente. Han sagde at han er bekymret. Ikke på en alarmistisk måde, men på en grundlæggende måde — som en mand der har brugt sit liv på at bygge noget og nu spørger sig selv om han forstår hvad han har bygget. Han er ikke bange for science fiction-scenarierne om robotter der angriber mennesker. Han er bekymret for noget mere subtilt: for systemer der er mægtigere end vi, og som vi ikke har lært at styre endnu. Det er ikke en indrømmelse af fiasko. Det er ærlighed fra det menneske der bedre end nogen anden ved hvad der er på spil.

Den bekymring deler han med en række af sine kolleger. Den deler han ikke med andre. Debatten er reel, og den er vigtig, og den fortjener mere end frygtreaktioner i den ene retning og naiv entusiasme i den anden.

***

Det spørgsmål Alan Turing stillede i 1950 — kan maskiner tænke? — er i dag ikke besvaret. Det er ikke engang sikkert at det er det rigtige spørgsmål. Men det spørgsmål vi nu lever midt i er et andet og mere presserende: hvad skal vi gøre med det vi har skabt?

Ikke i en abstrakt, filosofisk forstand. I en meget konkret forstand. Hvad skal du som person gøre med det? Hvad skal din arbejdsplads gøre med det? Hvad skal den skole gøre som dine børn går i? Hvad skal de politikere gøre der skal regulere det, de virksomheder der skal anvende det, de lærere der skal forklare det til børn der er vokset op med det som en selvfølge?

Rejsen fra Turings kontor i Manchester i 1950 til ChatGPTs hundrede millioner brugere i 2023 er ikke en teknologihistorie. Det er en menneskelig historie. En historie om nysgerrighed og overmod, om forskning der lå i skuffen i årtier og pludselig fik vind, om systemer der viste os noget vi ikke vidste vi ikke vidste om os selv. En historie om en lille gruppe der arbejdede videre under to AI-vintre mens resten af verden vendte dem ryggen. En historie der stadig er i gang.

Du er ikke tilskuer til den. Du er en del af den.

Spørgsmålet er ikke længere om maskiner kan tænke. Spørgsmålet er hvad vi vil tænke — om dem, med dem og på trods af dem — nu hvor de er her.
