# Hvordan kom vi hertil?

Den 9. juli 1955 gik Herbert Simon ind ad døren til et lille kontor på Carnegie Institute of Technology i Pittsburgh, Pennsylvania. Han var matematiker og økonom, og han havde brugt det meste af det forgangne år på et projekt han ikke helt vidste hvad han skulle kalde. Han og hans kollega Allen Newell havde skrevet et computerprogram der kunne bevise matematiske sætninger. Ikke ved at slå dem op. Ikke ved at følge en præprogrammeret liste over svar. Programmet tænkte sig frem. Det kombinerede regler, afprøvede muligheder og fandt veje ingen havde vist det.

Simon satte sig ned ved tavlen og skrev en sætning op til sin klasse. Den lød nogenlunde sådan: Vi har nu bygget en maskine der tænker.

Det var ikke en beskeden påstand. Det var heller ikke en præcis påstand. Men det var den første gang et menneske stod op og sagde det højt med en maskine i ryggen der gav påstanden en slags substans. Programmet hed Logic Theorist, og det kunne bevise 38 af de 52 sætninger i Bertrand Russells og Alfred North Whiteheads Principia Mathematica — en af det tyvende århundredes største matematiske bedrifter. For én af sætningerne fandt det endda et bevis der var kortere og mere elegant end Russells eget. Russell selv, da han fik det at vide, sagde at han var henrykt.

Det var begyndelsen. Og det var langt fra hvad vi i dag forstår ved kunstig intelligens. Men det var det øjeblik nogen besluttede sig for at forsøget var værd — og at de mennesker der mente maskinen aldrig ville tænke, måske tog fejl.

***

Fem år tidligere, i 1950, havde den britiske matematiker Alan Turing publiceret en artikel i det videnskabelige tidsskrift Mind. Titlen var Computing Machinery and Intelligence, og den indledte med et spørgsmål der lød enkelt men var dybt: Kan maskiner tænke?

Turing var ikke den type der svæver i abstrakt filosofi. Han var programmør, kodeknækker, matematiker — en mand der under Anden Verdenskrig havde hjulpet britisk efterretning med at bryde den tyske Enigma-kode og derved muligvis afkortet krigen med flere år. Han vidste hvad maskiner faktisk kunne, og han vidste hvad de ikke kunne. Men han mente spørgsmålet om maskiners tænkning var meningsfuldt, og han foreslog en metode til at teste det. Forestil dig at du sidder ved et tastatur og chatter med to usynlige samtalepartnere. Den ene er et menneske. Den anden er en maskine. Kan du afgøre hvilken der er hvilken? Hvis ikke, må maskinen siges at tænke — i hvert fald i den eneste forstand der er meningsfuld at måle.

**Turing-testen**, som den siden er blevet kaldt, definerede en hel generations forståelse af hvad kunstig intelligens skulle være. Ikke en maskine der regnede hurtigere. En maskine der talte som et menneske. Tænkte som et menneske. Var uadskillelig fra et menneske i samtale. Det viste sig at være et mål der tog meget, meget lang tid at nærme sig.

I 1956 samledes en lille gruppe forskere i Dartmouth, New Hampshire, til en sommerworkshop der sidenhen er gået over i historien som kunstig intelligensfeltets grundlæggende begivenhed. John McCarthy, Marvin Minsky, Claude Shannon og en håndfuld andre sad i seks uger og diskuterede hvad de kaldte artificial intelligence — et udtryk McCarthy selv havde opfundet til lejligheden fordi han mente det lød mere seriøst end cybernetik, som var det ord andre brugte. Optimismen var euforisk og næsten barnlig i sin uforbeholdenhed. De mente at ethvert aspekt af menneskelig intelligens principielt kunne beskrives præcist nok til at en maskine kunne simulere det. De forestillede sig at de inden for en enkelt generation ville have løst det meste.

Det gik ikke sådan.

De næste to årtier var præget af løfter og skuffelser i skiftende rytme. Computerne var for langsomme. Dataene var for få. Og problemerne viste sig at have en kompleksitet ingen havde forudset. Sproget, for eksempel. Det lød simpelt at lære en maskine at oversætte fra russisk til engelsk — du erstatter bare ordene med de tilsvarende ord på det andet sprog, ikke? Men sproget er ikke bare ord. Det er kontekst, tvetydighed, kulturelle referencer, ironi, undertoner og den slags forståelse der kræver at du har levet i en krop med en livshistorie bag dig. En sætning som "han tog nøglen og åbnede låsen" er triviel for et menneske. For en maskine i 1960'erne var det en labyrint af mehrtydigheder.

I 1973 publicerede den britiske regering en rapport om kunstig intelligens-forskningen i landet. Rapporten er siden blevet kaldt Lighthill-rapporten efter dens forfatter, matematikeren James Lighthill. Den var knusende i sin vurdering. Lighthill konkluderede at ingen af de store løfter fra 1950'erne og 1960'erne var indfriet, og at der ikke var grundlag for at tro de ville blive det inden for nogen overskuelig fremtid. Finansieringen svandt. Institutter lukkede. Forskere søgte andre jobs. Det var den første af det kunstig intelligensfelt siden har kaldt **AI-vintrene** — perioder hvor begejstringen fryser til is, pengene holder op med at strømme ind, og de kloge mennesker begynder at tvivle på om de har valgt det rigtige område at bruge deres liv på.

En anden vinter fulgte i 1980'erne. Denne gang kollapsede de såkaldte **ekspertsystemer**, der var feltets store satsning i det årti. Ekspertsystemerne var computerprogrammer der kodede menneskelig ekspertise som regler: Hvis patient har feber OG hoste OG er under fem år, så er diagnosen sandsynligvis X. Ellers, hvis dette og hint, så Y. Det virkede. Et stykke tid. I afgrænsede domæner med veldefinerede grænser. Et system til at diagnosticere bakterieinfektioner i blodet — MYCIN, udviklet på Stanford i begyndelsen af 1970'erne — præsterede faktisk bedre end mange erfarne læger i sin snævre specialitet.

Men verden er ikke bygget af rene regler. Den er fyldt med undtagelser, kanttilfælde og situationer ingen ekspert nogensinde havde forestillet sig da de sidst sad og kodede reglerne ind. Og systemerne var skrøbelige på en særlig ubehagelig måde. De vidste hvad de vidste. De vidste intet om hvad de ikke vidste. Stil et ekspertsystem et spørgsmål lidt uden for dets trænede domæne, og det svarede alligevel — med fuldstændig falsk selvsikkerhed. Det er en fejltype der minder om noget. Den minder om den slags menneske der altid har et svar, uanset om de har forstand på emnet.

Vi lavede maskiner der var dygtige inden for hvide kridtstreger vi selv havde tegnet. Virkeligheden respekterer ikke kridtstreger.

***

Det der til sidst forandrede alt var ikke en ny og revolutionerende ide om hvad intelligens er. Det var data. Det var regnekraft. Og det var en matematisk teknik der faktisk var gammel — men som ingen tidligere havde haft råmaterialerne til at bruge for alvor.

Teknikken hed **dyb læring**, og dens rødder strækker sig tilbage til 1940'erne og ideen om kunstige neurale netværk: beregningsstrukturer der løst var inspireret af hjernens opbygning. Forestil dig lag på lag af simple regneelementer — kunstige neuroner — der sender signaler til hinanden. Signalerne styrkes eller svækkes baseret på erfaring, ligesom forbindelserne i en rigtig hjerne styrkes når vi gentager noget eller svækkes når vi glemmer. Teorien var smuk. Praksissen var svær. Netværkerne krævede enorme mængder data og regnekraft ingen endnu besad.

I begyndelsen af 2000'erne begyndte begge dele at være tilgængelige. Internettet havde produceret data i mængder der ville have været utænkelige ti år tidligere — milliarder af billeder tagget med beskrivelser, milliarder af sider tekst oversat til andre sprog, milliarder af brugeres klik der afslørede hvad de fandt interessant. Grafikprocessorer, der oprindeligt var designet til at tegne computerspil med masser af parallelle beregninger, viste sig at være overraskende velegnede til de matrixberegninger neurale netværk kræver. Og Geoffrey Hinton, en britisk-canadisk forsker ved University of Toronto, havde brugt det meste af sin karriere på at tro på neurale netværk i præcis de år da alle andre havde opgivet dem.

Hinton var ikke den lette type. Han nægtede at acceptere den udbredte konsensus om at neurale netværk var en blindgyde. Han underviste, publicerede og udviklede i år hvor feltet betragtede ham som velbegavet men misforstået. Han fik studerende til at komme til Toronto fordi han var der, ikke på trods af det. To af dem hed Alex Krizhevsky og Ilya Sutskever.

Den 30. september 2012 offentliggjorde de tre resultater fra en international konkurrence kaldet ImageNet Large Scale Visual Recognition Challenge. Konkurrencen bestod i at lade computerprogrammer genkende og klassificere billeder fra en database på over en million fotografier fordelt på tusind kategorier: er det en hund eller en kat? En lastbil eller en cykel? En kirsebærblomstring eller en magnolia? De bedste programmer det år lavede fejl i omkring 26 procent af tilfældene. Hintons hold lavede fejl i 15,3 procent.

Et fald på næsten 11 procentpoint. I en konkurrence ingen nogensinde havde set et spring på mere end to eller tre.

Ingen i salen vidste præcis hvad de havde set. Men de vidste at det var noget. Ingeniører fra Google, Baidu og Microsoft sad i første række og noterede. Inden for et år havde Google ansæt Hinton og Sutskever, og et nyt kapitel i teknologihistorien var begyndt.

Det var ikke bare bedre. Det var en anden slags bedre. Programmet, som de kaldte AlexNet, havde ikke fået at vide hvad en hund ser ud som. Det havde ikke fået regler. Det havde set millioner af billeder og selv fundet ud af det. Det havde lært — ikke ved at følge instruktioner nogen havde skrevet, men ved at finde mønstre i data så subtile at intet menneske nogensinde ville have kunnet formulere dem. Det var tættest på hvad vi gør som børn: vi ser nok katte, og vi ved at det er en kat. Vi kan ikke forklare præcis hvorfor.

De næste par år udvidede og gentagede andre forskere resultaterne i domæne efter domæne. Dybe neurale netværk slog mennesker til genkendelse af talt sprog. De oversatte tekst bedre end de mest avancerede regelbaserede systemer nogen havde bygget. De diagnosticerede øjensygdomme fra nethindebilleder med en præcision der matchede øjenlæger. De forudsagde proteinstrukturer som biologer i årtier ikke havde kunnet løse. Ét felt efter det andet. Og hele vejen igennem var det samme mønster: ingen havde fortalt maskinerne reglerne. De havde fundet dem selv i dataene.

***

I 2017 publicerede en gruppe på otte forskere fra Google en artikel med den tilsyneladende filosofiske titel Attention Is All You Need. Den var teknisk og tæt, og uden for en smal kreds af specialister lagde næsten ingen mærke til den. Men den beskrev en ny arkitektur til at behandle sprog — en metode til at lade et neuralt netværk afveje hvilke dele af en sætning der var relevante for at forstå hvilke andre dele, og gøre det for alle ord på én gang frem for ét ord ad gangen. De kaldte grundmekanismen opmærksomhed, og den samlede arkitektur kaldte de **transformeren**.

Transformeren viste sig at være nøglen til det hele.

I 2019 offentliggjorde OpenAI, et AI-laboratorium grundlagt i San Francisco i 2015 med finansiering fra en kreds der inkluderede Elon Musk og Microsoft, et system de kaldte GPT-2. Det var en **sprogmodel** — en datagødet matematisk struktur trænet på hundredvis af milliarder ord fra internettet og lært at forudsige hvilket ord der sandsynligvis kom næst i en sætning. Det lyder næsten banalt. Et programs der forudsiger det næste ord — hvad er det ved det?

Men det var ikke banalt. GPT-2 kunne skrive sammenhængende og overbevisende afsnit om ethvert emne. Det kunne fortsætte historier i den stil de var begyndt i. Det kunne besvare spørgsmål med en detaljerigdom der overraskede. Og det kunne skifte register alt efter hvad brugeren bad om. OpenAI var bekymret. Bekymret nok til at de med begrundelse om misbrug valgte at frigive systemet i etaper i stedet for på én gang — en beslutning der selv var historisk, for den var første gang et AI-laboratorium tilbageholdt et resultat af frygt for skade. De diskuterede internt om det var ansvarligt at udgive det overhovedet.

Det der kom to år senere var langt kraftigere.

GPT-3 fra 2020 var trænet på ti gange mere data og havde hundrede gange så mange parametre — de matematiske vægte der udgør en sprogmodels viden og kapaciteter. Og det gjorde noget underligt. Det var meget bedre end forventet — ikke bare bedre i forhold til GPT-2, men bedre på måder der overraskede selv dem der havde bygget det. Det kunne skrive brugbar programkode. Det kunne sammenfatte juridiske dokumenter. Det kunne løse aritmetiske opgaver. Det kunne skrive fiktion i stil med Shakespeare eller Hemingway med en troværdighed der var ubehagelig at betragte, og det kunne producere ting der lignede journalistik, poesi og filosofisk prosa.

Ingen havde eksplicit lært det disse ting. Det havde lært dem på vejen mod at forudsige det næste ord.

De forskere der arbejdede med disse systemer opdagede noget de begyndte at kalde **skaleringslovene**: jo mere data og regnekraft de hældte i, jo bedre blev systemerne — ikke på en jævn og forudsigelig måde, men med pludselige spring. Indimellem skete det som de kaldte emergente evner. Du skalerede systemet op med en faktor ti, og pludselig kunne det gøre noget det slet ikke kunne før. Ikke lidt bedre. Slet ikke, og så pludselig ja. Som om en tærskel var nået og en ny kapacitet materialiserede sig ud af ingenting.

Det var foruroligende. Det var fascinerende. Det var svært at forklare. Og det betød at ingen rigtig vidste hvad det næste store system ville kunne.

***

Den 30. november 2022 klokken tolv om natten, lokal californisk tid, sendte OpenAI en e-mail ud til en lille gruppe testbrugere. De fik adgang til et nyt produkt der hed ChatGPT. Det var bygget oven på GPT-3,5, en videreudvikling, og det var pakket ind i en simpel chatgrænseflade — du skrev til det, det svarede. Ingen programmeringskundskaber nødvendige. Ingen teknisk viden krævet. Bare et tekstfelt og en returknap.

På fem dage havde det en million brugere. På to måneder hundrede millioner. Det var det hurtigst voksende forbrugerprodukt i teknologihistoriens hidtil registrerede tid. Til sammenligning tog det Instagram halvandet år at nå den million. TikTok ni måneder. ChatGPT fem dage.

Hvad skete der egentlig den nat? Teknologisk set skete der ikke meget nyt. Sprogmodeller af denne type og styrke havde eksisteret i årevis. Forskerne og ingeniørerne vidste hvad de kunne. Virksomheder som Google og Meta havde bygget tilsvarende systemer men valgt at holde dem tilbage af frygt for fejltagelser og kritik. Men for den brede offentlighed var det som om en dør der altid havde stået på klem pludselig swingede op og ikke lukkede igen.

Her var en maskine du kunne tale med. Her var noget der svarede fornuftigt, sammenhængende, detaljeret og hurtigt — på dansk, på spansk, på mandarin, på hvad du end bad om, i en tone der tilpassede sig dig. Her var noget der hjalp dig med at formulere et klagebrev til din udlejer, skrive en fødselsdagssang til din farmor, finde fejlen i din regnearkformel eller forklare kvantemekanik på et niveau din fjortenårige kunne følge med i.

Folk var ikke bare imponerede. Mange var rystede. Og de spurgte hinanden: Vidste I det her var på vej?

De fleste vidste det ikke. Ikke på den måde. Ikke med den konkrethed. Kunstig intelligens havde eksisteret som et abstrakt begreb — noget der skete i forskningslaboratorier og i artikler ingen læste. Nu eksisterede det som et tekstfelt på en skærm alle kunne åbne. Barrieren var væk. Den teknologiske tærskel var krydset. Det var ikke som da internettet kom og du skulle lære at bruge en browser — det var som om internettet allerede var der, og du talte bare med det.

Reaktionerne kom i bølger og fra alle sider på én gang. Lærere spurgte om skriftlige opgaver og eksamener var meningsløse nu. Advokater og jurister diskuterede ophavsret til kunstig intelligens-genereret indhold og hvem der bar ansvaret når systemerne fejlede. Journalister undersøgte om redaktioner ville overleve. Filosoffer genoptog en årtier gammel diskussion om hvad forståelse egentlig er, og om noget der producerer sammenhængende tekst uden en hjerne kan siges at forstå noget som helst. Psykologer advarede mod de millioner af mennesker der begyndte at bruge chatbots som erstatning for menneskelig kontakt. Og politikere — de fleste af dem — spurgte med stigende uro hvad det overhovedet var.

I marts 2023 udgav OpenAI GPT-4. Det var markant stærkere end GPT-3,5. Det bestod den amerikanske advokateksamen med en score i den øverste tiendedel af alle testtagere det år. Det bestod den medicinske licenseksamen. Det klarede sig i den øverste procentdel i biologi, kemi og en lang række andre fag. Det løste matematikopgaver der krævede flertrinsræsonnement. Det forstod billeder — du kunne nu vise det et røntgenbillede, et diagram, et fotografi, og bede det analysere hvad det så. Og det var langt bedre til at undgå de mest åbenlyse fejltagelser og fabrikationer der havde plaget forgængerne.

Det samme år annoncerede Google, Meta, Anthropic, Mistral og en lang række andre laboratorier og virksomheder deres egne systemer. Konkurrencen accelererede. Investeringerne voksede. Og den diskussion der havde ligget sovende i årtier om hvad kunstig intelligens ville gøre ved samfundet — den diskussion stod pludselig som en brand i midten af det offentlige rum.

***

Politikerne løb efter udviklingen. Den europæiske AI-forordning, der havde ligget til langsom behandling siden 2021, fik pludselig en ny slags hast. Den blev vedtaget i 2024 og trådte gradvis i kraft — den første bindende lovgivning i verden der regulerede kunstig intelligens systematisk og med retslige konsekvenser. I USA udstedte præsident Biden i oktober 2023 en eksekutivordre om kunstig intelligens der krævede at de mest kraftfulde systemer blev vurderet af føderale myndigheder inden frigivelse. Det britiske parlament nedsatte udvalg. FN nedsatte ekspertgrupper. I Danmark begyndte kommuner, ministerier og universiteter at udstikke retningslinjer for ansvarlig brug i den offentlige sektor — retningslinjer skrevet i en hastighed der afspejlede hvor meget der stod på spil, og hvor lidt tid der var til at tænke sig om.

Det er ikke panik. Men det er noget nær pressede reaktioner fra institutioner der er designet til at bevæge sig langsomt og omhyggeligt, tvunget til at tage stilling til noget der bevæger sig hurtigt og hensynsløst. De to hastigheder passer dårligt sammen. Det er en af de grundlæggende spændinger vi lever med nu.

For mens politikerne forhandler og eksperterne diskuterer, fortsætter systemerne med at blive bedre. Ikke lineært. Ikke forudsigeligt. Men konsekvent. Måned for måned. System for system. Skaleringslovene holder foreløbig. Og der er endnu ingen tegn på at vi er nået til bunden af hvad der er muligt.

***

Så her er vi. Du og vi og alle de milliarder andre mennesker der deler denne planet med maskiner der nu kan gøre ting ingen maskine nogensinde har kunnet. Ting som vi for bare ti år siden troede krævede menneskelig bevidsthed, erfaring og intuition.

Du har sikkert selv mærket det — det øjeblik da du første gang prøvede at skrive til et af disse systemer og fik et svar der overraskede dig. Måske var det klogt på en måde der imponerede dig. Måske var det forkert på en fascinerende måde, et svar der var flydende og overbevisende men fuldstændig galt, og det var netop den kombination der satte dig til eftertanke. Måske var det bare praktisk nyttigt, og det var nok i sig selv til at forandre en vane. Måske afviste du det som et avanceret trick der ikke rigtig forstår noget — at det bare er statistik over ord, mønstre i et hav af tekst, uden nogen egentlig forståelse bag. Alle disse reaktioner er gyldige. Ingen af dem er den fulde sandhed.

Det der er vigtigt at forstå, og det som dette kapitel er et forsøg på at vise, er at vi ikke er ved begyndelsen af kunstig intelligens. Vi er midt i en udvikling der begyndte for over halvfjerds år siden med en matematiker der stillede et filosofisk spørgsmål og to ingeniører der programmerede nattetimerne væk på Carnegie Institute of Technology i Pittsburgh. Vi er ankommet til et punkt hvor kurven er blevet synlig for alle — ikke kun for de mennesker der har studeret den, ikke kun for de forskere der har troet på den i kulden, men for enhver der har et tastatur og en internetforbindelse.

Herbert Simon stod op i 1955 og sagde vi har bygget en maskine der tænker. Han tog fejl om meget. Han undervurderede kompleksiteten. Han overvurderede hastigheden. Men han pegede i den rigtige retning — og i de årtier der fulgte dyrkede en hel generation af forskere det felt han pegede på, i kulden under AI-vintrene, i skuffelserne over ekspertsystemerne, i de ensomme år hvor Geoffrey Hinton og hans studerende arbejdede videre med neurale netværk fordi de ikke kunne lade være, selvom ingen troede de ville lykkes.

Det er dem vi har at takke for at vi sidder her nu. Med al det der følger.

Resten af denne bog handler om hvad det betyder — på hospitaler og i skoler, i domstole og i stuer, i de intime relationer og i de store offentlige samtaler om hvem vi er og hvem vi vil være. Men inden vi kan tale om fremtiden, er vi nødt til at have forstået baggrunden. Kurven har altid været der. Vi kunne bare ikke se den. Nu kan vi se den. Og hvad vi gør med det syn — det er hvad de næste kapitler handler om.
