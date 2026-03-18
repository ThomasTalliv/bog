[Fakta- og konsistenstjekker] — Review af Felt 64

### Overordnet vurdering

Manuskriptet er generelt velfunderet faktuelt. De store historiske begivenheder — AlexNet, AlphaGo, ChatGPT, AlphaFold — er korrekt beskrevet i deres hovedtræk. Terminologien er overvejende konsistent, og tonen holder et bemærkelsesværdigt stabilt niveau gennem hele bogen. Hovedproblemet er en håndfuld specifikke fakta der er upræcise eller potentielt vildledende: Geoffrey Hintons alder er korrekt men GPT-4-eksamensresultaterne er fremstillet for positivt (den berømte "øverste tiendedel" er siden anfægtet af MIT-forskning), John Deere/Blue River-opkøbet er dateret forkert, Too Good To Gos brugertal er sandsynligvis overdrevet for bogens skrivetidspunkt, og der er enkelte steder hvor "i dag"-formuleringer vil forældes hurtigt.

### Faktatabel

| Påstand | Kapitel | Status | Kilde/Note |
|---------|---------|--------|------------|
| Geoffrey Hinton, 64-årig canadisk professor, University of Toronto, oktober 2012 | Hvordan kom vi hertil? | ✅ Bekræftet | Hinton født 6. dec. 1947; var 64 i okt. 2012. Korrekt. |
| AlexNet fejlprocent 15,3 vs. andre holds 25-26 | Hvordan kom vi hertil? | ⚠️ Usikker | AlexNets top-5-fejlrate var 15,3%. Runner-up var 26,2%, ikke "25 til 26". Lille unøjagtighed, men rimeligt afrundet. |
| Alex Krizhevsky og Ilya Sutskever var Hintons to studerende | Hvordan kom vi hertil? | ✅ Bekræftet | Korrekt. |
| AlexNet brugte to grafikkort | Hvordan kom vi hertil? | ✅ Bekræftet | To Nvidia GTX 580 GPU'er. Korrekt. |
| Google hentede Hinton i 2013 | Hvordan kom vi hertil? | ✅ Bekræftet | Google opkøbte DNNresearch Inc. i marts 2013. |
| Facebook grundlagde AI-forskningsenhed 2013, Yann LeCun | Hvordan kom vi hertil? | ✅ Bekræftet | FAIR grundlagt dec. 2013 med LeCun som leder. |
| Ilya Sutskever, en af grundlæggerne af OpenAI | Hvordan kom vi hertil? | ✅ Bekræftet | Korrekt. |
| Alan Turing, 38-årig matematiker, Manchester, 1950 | Hvordan kom vi hertil? | ✅ Bekræftet | Turing født 23. juni 1912; var 38 i okt. 1950. Korrekt. |
| "Computing Machinery and Intelligence" publiceret i tidsskriftet Mind, 1950 | Hvordan kom vi hertil? | ✅ Bekræftet | Mind, vol. LIX, nr. 236, okt. 1950. |
| Dartmouth 1956, John McCarthy 29 år | Hvordan kom vi hertil? | ⚠️ Usikker | McCarthy født 4. sept. 1927. Mødet var sommeren 1956. Han var 28 for det meste af workshoppen og fyldte 29 d. 4. sept. 1956 mod mødets slutning. Lidt upræcist at kalde ham 29, men ikke decideret forkert. |
| Lighthill-rapporten 1973, British Science Research Council | Hvordan kom vi hertil? | ✅ Bekræftet | Skrevet af James Lighthill, bestilt af SRC, publiceret 1973. Korrekt. |
| Go: regler, 19x19, antal positioner overstiger atomer i universet | Hvordan kom vi hertil? | ✅ Bekræftet | Standardpåstand; ca. 2,1 x 10^170 lovlige positioner vs. ca. 10^80 atomer. |
| AlphaGo vs. Lee Sedol, 9. marts 2016, Seoul, fem partier | Hvordan kom vi hertil? | ✅ Bekræftet | Korrekt dato, sted og format. |
| Lee Sedol betragtet som en af de tre bedste spillere nogensinde | Hvordan kom vi hertil? | ✅ Bekræftet | Bredt anerkendt vurdering. |
| Lee Sedol tabte 1, 2, 3; vandt 4; tabte 5. Resultat 4-1 | Hvordan kom vi hertil? | ✅ Bekræftet | Korrekt kampforløb. |
| AlphaGos berømte træk i parti to, femte omgang | Hvordan kom vi hertil? | ⚠️ Usikker | Det berømte "Move 37" i parti to var AlphaGos 37. træk, ikke "femte omgang". Teksten siger "et træk i femte omgang" hvilket er misvisende — det er formentlig en forveksling. |
| Lee Sedol trak sig tilbage 2019, sagde AI er "en enhed der ikke kan overvindes", 36 år gammel | Hvordan kom vi hertil? | ✅ Bekræftet | Sedol født 2. marts 1983, annoncerede pension nov. 2019, var 36 år. Citatet er korrekt. |
| DeepMind opkøbt af Google to år før kampen (dvs. 2014) | Hvordan kom vi hertil? | ✅ Bekræftet | Google opkøbte DeepMind i jan. 2014. |
| OpenAI grundlagt 2015, Elon Musk og Sam Altman | Hvordan kom vi hertil? | ✅ Bekræftet | Korrekt. |
| GPT-2 fra 2019, GPT-3 fra 2020 | Hvordan kom vi hertil? | ✅ Bekræftet | GPT-2 feb. 2019, GPT-3 juni 2020. |
| ChatGPT lanceret november 2022 | Hvordan kom vi hertil? | ✅ Bekræftet | Lanceret 30. nov. 2022. |
| ChatGPT: 1 million brugere på 5 dage, 100 millioner på 2 måneder | Hvordan kom vi hertil? | ✅ Bekræftet | Bredt rapporteret; 1 mio. på 5 dage, 100 mio. i jan. 2023 (ca. 2 måneder). |
| Instagram 2,5 år, TikTok 9 måneder til 100 mio. brugere | Hvordan kom vi hertil? | ✅ Bekræftet | Standardtal brugt i medierapporter. |
| GPT-4 udgivet marts 2023 | Hvordan kom vi hertil? | ✅ Bekræftet | 14. marts 2023. |
| GPT-4 bestod advokateksamen med score i øverste tiendedel | Hvordan kom vi hertil? | ❌ Sandsynlig fejl | OpenAI hævdede 90. percentil, men MIT-forskning (Eric Martinez, 2024) har genberegnet dette til ca. 62.-69. percentil mod reelle testtagere. Påstanden om "øverste tiendedel" er baseret på OpenAIs oprindelige, nu anfægtede tal. Bør nuanceres. |
| GPT-4 klarede sig i øverste procentdel i biologi og kemi | Hvordan kom vi hertil? | ⚠️ Usikker | OpenAIs egne tal viste stærke resultater på AP Biology og AP Chemistry, men "øverste procentdel" er en forenkling. Bør tjekkes mod specifikke eksamener. |
| Microsoft investerede 10 milliarder dollars i OpenAI | Hvordan kom vi hertil? | ✅ Bekræftet | Rapporteret jan. 2023, kumulativ investering op til 13 mia. |
| EU's AI-forordning vedtaget 2024 | Hvordan kom vi hertil? | ✅ Bekræftet | Vedtaget af EU-Parlamentet marts 2024, trådte gradvist i kraft. |
| Hinton forlod Google 2023, Nobelpris i fysik 2024 | Hvad bringer fremtiden? | ✅ Bekræftet | Forlod Google maj 2023; Nobelpris i fysik okt. 2024. |
| AlphaFold løste proteinstruktur for alle kendte proteiner, under et år, database gratis | Sundhed | ⚠️ Usikker | AlphaFold2 vandt CASP14 i nov. 2020. Databasen lanceredes juli 2021 (365.000 strukturer), udvidedes til 200+ mio. i juli 2022. "Alle kendte proteiner" er en forenkling — det dækker 200+ mio. forudsagte strukturer, men ikke alle er eksperimentelt verificerede. Tidslinjen "under et år" er uklar: fra CASP-sejr til fuld database tog ca. 2 år. |
| Over 200 millioner kendte proteiner i levende organismer | Sundhed | ✅ Bekræftet | AlphaFold-databasen dækker 214 mio. proteinsekvenser (2024-tal). |
| Modernas mRNA-vaccine designet på to dage | Sundhed | ✅ Bekræftet | Sekvensen blev designet 13. jan. 2020, to dage efter den genetiske sekvens blev offentliggjort 11. jan. 2020. |
| Woebot Stanford-studie 2017, Alison Darcy, 70 studerende, KAT | Mental sundhed | ✅ Bekræftet | Publiceret i JMIR Mental Health 2017. 70 deltagere (18-28 år), 2 uger. Darcy var medforfatter. |
| Woebot: FDA advarselsbrev 2022 | Mental sundhed | ✅ Bekræftet | FDA udsendte advarselsbrev til Woebot Health i 2022. |
| WHO erklærede ensomhed for global sundhedstrussel 2023 | Mental sundhed | ✅ Bekræftet | WHO lancerede Commission on Social Connection i nov. 2023. |
| Ensomhed svarer til at ryge 15 cigaretter om dagen | Mental sundhed | ✅ Bekræftet | Standardtal fra Holt-Lunstad et al. (2010); bredt citeret. |
| Replika: 10 millioner brugere, februar 2023 italiensk indgreb | Intimitet & relationer | ✅ Bekræftet | Korrekt. |
| Xiaoice: 660 millioner brugere, udviklet af Microsoft, udskilt som selvstændigt selskab | Intimitet & relationer | ✅ Bekræftet | 660 mio. online brugere; udskilt juli 2020. |
| Edmond de Belamy, Christie's, 25. oktober 2018, 432.500 dollar | Kreativitet & kunst | ✅ Bekræftet | Korrekt dato, pris og auktionshus. |
| Vurdering 7-10.000 dollar | Kreativitet & kunst | ✅ Bekræftet | Estimat var $7.000-$10.000. |
| Obvious: Hugo Caselles-Dupre, Pierre Fautrel, Gauthier Vernier | Kreativitet & kunst | ✅ Bekræftet | Korrekt navne. |
| GAN trænet på 15.000 portrætter fra 14.-20. århundrede | Kreativitet & kunst | ⚠️ Usikker | Antallet 15.000 er ofte citeret men svært at verificere præcist. Rimelig afrunding. |
| Robbie Barrat, 19 år, skrev original kode, fik ingenting | Kreativitet & kunst | ✅ Bekræftet | Barrat var ca. 19 år. Kontroversen om manglende kreditering er veldokumenteret. |
| DALL-E januar 2021, DALL-E 2 april 2022 | Kreativitet & kunst | ✅ Bekræftet | DALL-E jan. 2021, DALL-E 2 april 2022. |
| Midjourney beta juli 2022 | Kreativitet & kunst | ✅ Bekræftet | Åben beta juli 2022. |
| Stable Diffusion open source august 2022 | Kreativitet & kunst | ✅ Bekræftet | Lanceret aug. 2022. |
| 15 milliarder AI-genererede billeder marts 2023, Everypixel | Kreativitet & kunst | ⚠️ Usikker | Everypixel rapporterede dette tal. Det er svært at uafhængigt verificere, men tallet er bredt citeret. |
| Getty Images sagsøgte Stability AI februar 2023, London | Kreativitet & kunst | ✅ Bekræftet | Sag anlagt feb. 2023 ved High Court i London. |
| "Heart on My Sleeve" viral april 2023, Ghostwriter, Drake/Weeknd | Kreativitet & kunst | ✅ Bekræftet | Korrekt. |
| Grimes Elf.tech, forår 2023 | Kreativitet & kunst | ✅ Bekræftet | Korrekt. |
| Google DeepMind reducerede kølingsenergiforbrug med 40% i 2016 | Klima & energi | ✅ Bekræftet | Officiel DeepMind-blog fra juli 2016 bekræfter 40% reduktion i køleenergi. |
| John Deere købte Blue River Technology i 2019 for 305 mio. dollar | Mad & landbrug | ❌ Sandsynlig fejl | Opkøbet skete i **2017**, ikke 2019. Prisen 305 mio. dollar er korrekt. |
| Too Good To Go grundlagt København 2016, over 100 mio. brugere i 17 lande | Mad & landbrug | ⚠️ Usikker | Grundlagt 2015 (ikke 2016, ifølge flere kilder), men 2016 er ofte angivet. 100 mio. brugere blev først nået omkring tidligt 2025; i 2023-2024 var tallet ca. 62-80 mio. Hvis bogen udgives 2025/2026 er 100 mio. rimeligt, men "17 lande" skal opdateres til 19-21. |
| Upside Foods FDA/USDA-godkendelse juni 2023, laboratoriekød | Mad & landbrug | ✅ Bekræftet | FDA godkendte i nov. 2022, USDA i juni 2023. Korrekt. |
| Mark Post, første laboratorieburger 2013, 330.000 dollar | Mad & landbrug | ✅ Bekræftet | Præsenteret aug. 2013, pris ca. 325.000-330.000 dollar. |
| Danish Crown slagter over 70.000 grise om dagen | Mad & landbrug | ⚠️ Usikker | Danish Crown slagter ca. 60.000-70.000 grise om dagen ifølge forskellige kilder. Tallet er i den rigtige størrelsesorden. |
| Waymo: over 100.000 betalte ture om ugen, begyndelsen af 2024 | Transport | ✅ Bekræftet | Waymo rapporterede over 100.000 ugentlige ture i early 2024. |
| NHTSA hundredvis af ulykker med Teslas assistentsystemer 2019-2023 | Transport | ✅ Bekræftet | NHTSA åbnede adskillige undersøgelser; hundredvis af rapporter. |
| Yara Birkeland, verdens første fuldt elektriske og autonome containerskib, testdrift Norge 2022 | Transport | ✅ Bekræftet | Testdrift begyndte 2022. |
| McKinsey januar 2024: 12 millioner amerikanere skifte erhverv inden 2030 | Arbejde | ✅ Bekræftet | McKinsey Global Institute rapport fra juli 2023/jan. 2024, estimat op til 12 mio. |
| Klarna AI erstattede 700 kundeservicemedarbejdere, 2024 | Arbejde | ✅ Bekræftet | Klarna CEO Sebastian Siemiatkowski rapporterede dette i 2024. |
| Finlands UBI-forsøg 2017-2018, 2.000 arbejdsløse, 560 euro/måned | Arbejde | ✅ Bekræftet | Korrekt antal, beløb og periode. |
| Islands forsøg med firedages arbejdsuge 2015-2019, over 2.500 arbejdere, 1% af arbejdsstyrken | Arbejde | ✅ Bekræftet | Bredt rapporteret; 2.500 deltagere ud af ca. 200.000 arbejdsstyrke. |
| Cambridge Analytica, Brexit/Trump 2016 | Demokrati | ✅ Bekræftet | Korrekt. |
| Holland skattemyndighedsskandale 2021, algoritmisk diskrimination, regeringens afgang | Demokrati | ✅ Bekræftet | Toeslagenaffaire; Rutte-regeringen trådte tilbage jan. 2021. |
| Hongkong deepfake-svindel marts 2024, 25 mio. dollar | Identitet & bevidsthed | ✅ Bekræftet | Rapporteret feb. 2024; beløbet var ca. 25 mio. USD (200 mio. HKD). |
| David Chalmers, "det svære problem", 1995 | Identitet & bevidsthed | ✅ Bekræftet | Artiklen "Facing Up to the Problem of Consciousness" (1995). |
| John Searle, "det kinesiske rum", 1980 | Identitet & bevidsthed | ✅ Bekræftet | "Minds, Brains, and Programs" (1980). |
| Derek Parfit, Reasons and Persons, 1984 | Identitet & bevidsthed | ✅ Bekræftet | Korrekt. |
| Harvard/Google kortlægning af 1 mm3 hjernebark 2024, 57.000 celler, 150 mio. synapser, 1,4 PB data | Identitet & bevidsthed | ✅ Bekræftet | Google/Harvard connectome-projekt, publiceret 2024 i Science. |
| Tom Stoppard, Rosencrantz and Guildenstern Are Dead, 1966 | Identitet & bevidsthed | ✅ Bekræftet | Urpremiere Edinburgh Festival 1966. |

### Terminologi-konsistens

| Begreb | Foretrukken form | Inkonsistente varianter | Lokation |
|--------|-----------------|------------------------|----------|
| Tiltale: "man" vs. "du/vi" | du/vi (jf. stilguide) | "man" bruges mindst 15-20 gange gennem manuskriptet | Forord (l.13), Hvad bringer fremtiden? (l.221, 231, 315), Sundhed (l.329, 447), Uddannelse (l.579, 627, 693), Klima (l.1139), Mad (l.1281, 1391), Mental sundhed (l.995, 1017, 1045) |
| Kunstig intelligens / AI | "Kunstig intelligens" ved første nævning, derefter "AI" | Konsistent brugt; "AI" dominerer efter introduktion | Gennemgående |
| Dyb læring / deep learning | "dyb læring" | Konsistent | Hvordan kom vi hertil? |
| Neuralt netværk | "neuralt netværk" | Konsistent | Gennemgående |
| Maskinlæring / machine learning | "maskinlæring" | Konsistent; "machine learning" bruges ikke | Gennemgående |
| Sprogmodel / language model | "sprogmodel" | Konsistent | Gennemgående |
| Kognitiv adfærdsterapi / KAT / CBT | "kognitiv adfærdsterapi" + "KAT" | "CBT" bruges i Stanford-konteksten (l.979 "CBT principles") | Mental sundhed |
| Flexicurity | "Flexicurity" | Konsistent | Arbejde |
| Eksponentiel / eksponentielt | Blandet | Konsistent i brug | Gennemgående |
| Du-tiltale vs. vi-tiltale | Veksler naturligt | Ingen problematisk inkonsistens | Gennemgående |
| Full Self-Driving / FSD | Introduceret med forklaring | Konsistent | Transport |
| Singulariteten | "Singulariteten" | Konsistent | Hvad bringer fremtiden? |
| Tempus: præteritum vs. præsens | Præteritum til historiske afsnit, præsens til nutid | Generelt konsistent, men enkelte steder skiftes der inden for samme afsnit | Diverse |

### Kritiske fund (skal fixes)

1. **Hvordan kom vi hertil? (l.115)** — GPT-4's advokateksamensresultat beskrives som "en score i den øverste tiendedel af alle testtagere." MIT-forskning (Eric Martinez, 2024) har vist at dette tal var baseret på sammenligning med en skæv population af gentagere og at GPT-4 reelt scorede mellem 48. og 69. percentil mod typiske testtagere. → Foreslået ændring: "Det bestod den amerikanske advokateksamen med en komfortabel margin" eller tilføj nuance: "ifølge OpenAIs egne tal i den øverste tiendedel, et resultat der dog siden er blevet anfægtet."

2. **Mad & landbrug (l.1317)** — "I 2019 købte John Deere det californiske startup Blue River Technology for 305 millioner dollar." Opkøbet skete i **september 2017**, ikke 2019. → Ret årstallet til 2017.

3. **Hvordan kom vi hertil? (l.95)** — "I parti to mod Lee Sedol spillede AlphaGo et træk i femte omgang" — Det berømte træk var "Move 37" (AlphaGos 37. træk i parti to), ikke "et træk i femte omgang." → Ret til "I parti to mod Lee Sedol spillede AlphaGo et træk — det der siden er blevet kendt som 'Move 37' —"

### Væsentlige fund (bør fixes)

1. **Hvordan kom vi hertil? (l.33)** — "Alle andre hold lå på 25 til 26." Den faktiske runner-up havde en fejlrate på 26,2%. Formuleringen er ikke forkert men upræcis. → Overvej "omkring 26 procent" for klarhed.

2. **Mad & landbrug (l.1309)** — Too Good To Go beskrives med "over hundrede millioner brugere i sytten lande." Appen nåede 100 mio. brugere omkring tidligt 2025 og opererer nu i 19-21 lande. I 2023-2024 var tallet snarere 62-80 mio. → Verificer tallet mod udgivelsestidspunktet. Hvis bogen udgives i 2026, er 100 mio. rimeligt, men "sytten lande" bør opdateres.

3. **Mad & landbrug (l.1309)** — Too Good To Go "grundlagt i København i 2016" — flere kilder angiver 2015 som grundlæggelsesår. → Tjek og evt. ret til 2015.

4. **Sundhed (l.367)** — "AlphaFold løste problemet for alle kendte proteiner. Det tog under et år." Tidslinjen er uklar: AlphaFold2 vandt CASP14 i nov. 2020, databasen med 200+ mio. strukturer kom først i juli 2022 (ca. 20 måneder). Den første database med ~365.000 strukturer kom i juli 2021. → Præciser tidslinjen eller formuler det som "løste problemet i en skala der dækkede stort set alle kendte proteiner inden for to år."

5. **Hvordan kom vi hertil? (l.45)** — John McCarthy beskrives som "29-årig" ved Dartmouth-mødet 1956. Han var 28 for størstedelen af workshoppen (sommeren 1956) og fyldte 29 d. 4. sept. 1956. → Overvej at skrive "den 28-årige" eller "den dengang 28-årige."

6. **Forord (l.13) og diverse** — Stilguiden foreskriver at "man" ikke bruges (i stedet "du/vi/os"). Ordet "man" forekommer mindst 15-20 gange i manuskriptet. → Gennemgå og erstat "man" med "du" eller "vi" hvor muligt. Særligt synligt i Forord: "når man skal forstå AI."

7. **Hvordan kom vi hertil? (l.115)** — "Det klarede sig i den øverste procentdel i biologi og kemi." OpenAIs rapport viste høje scorer på AP Biology (5/5) og AP Chemistry, men "øverste procentdel" er en forenkling af specifikke eksamensscore. → Præciser eller tilføj forbehold.

### Observationer (nice to fix)

1. **Tids-konsistens generelt** — Bogen bruger formuleringer som "i dag" og "i 2024" og "i 2025" løbende. Da bogen formentlig udgives i 2026, bør alle "i dag"-formuleringer gennemgås for at sikre at de ikke virker forældede. Eksempler: "er i dag brugt i mere end ti millioner operationer" (l.405), "er allerede i klinisk brug i USA" (l.403).

2. **Forord (l.5)** — "ligges" er en stavefejl; korrekt form er "lægges" eller bedre: "ligge." → Ret stavefejl.

3. **Mental sundhed (l.997)** — "380.000 voksne danskere følte sig svært ensomme" og "ensomhed øger risikoen for hjertekarsygdom med 29 procent, for demens med 50 procent, for tidlig død med 26 procent." Disse procenter stammer fra meta-analyser (Holt-Lunstad et al.) og er korrekte, men det bør overvejes om kilderne bør nævnes mere eksplicit i en eventuel kildeliste.

4. **Sundhed (l.405)** — Da Vinci-systemet "brugt i mere end ti millioner operationer verden over." I 2024 rapporterede Intuitive Surgical over 12 mio. procedurer. Tallet er korrekt i størrelsesorden.

5. **Arbejde (l.857)** — "Finland gennemførte et toårigt forsøg fra 2017 til 2018 med 2.000 arbejdsløse der modtog 560 euro om måneden." Deltagerne var 25-58 år og modtog arbejdsløshedsunderstøttelse, ikke "arbejdsløse" i bred forstand. Lille nuance.

6. **Kreativitet & kunst (l.1575)** — "Den 25. oktober 2018" — auktionen var faktisk den 25. oktober 2018. Korrekt.

7. **Transport (l.1443)** — "Metroen i København har kørt uden fører siden åbningen i 2002." Korrekt; Københavns Metro åbnede i 2002 som førerløs.

8. **Identitet & bevidsthed (l.2275)** — "hjerneeemulering" har en ekstra bogstav ('e'). → Ret stavefejl til "hjerneemulering."

9. **Diverse kapitler** — Stilguiden siger "Ingen engelske vendinger der har et dansk alternativ." Bogen bruger generelt danske termer men har enkelte engelske udtryk som "one-person unicorns" (l.867), "human-in-the-loop" (l.807), "so-so automation" (l.851), "Mobility as a Service" (l.1499), "platooning" (l.1461) og "digital immortality" (l.2291). De fleste er acceptable fordi de introduceres med forklaring, men "human-in-the-loop" og "platooning" kunne oversættes.

10. **Tone-konsistens** — Bogen holder en bemærkelsesværdig stabil tone gennem alle kapitler. Der er ingen markante stilbrud. De personlige åbninger (Kirsten, Mads, Peter, Sarah, Lena, Grethe) fungerer konsekvent. Ingen kapitler virker som om de er skrevet i en markant anderledes stemning.

### Opsummering til ekspertpanelet

- **GPT-4 advokateksamen**: Påstanden om "øverste tiendedel" er direkte anfægtet af peer-reviewed forskning og bør nuanceres. Dette er bogens mest synlige faktuelle sårbarhed, da den berører et højprofileret og bredt dækket emne.
- **John Deere/Blue River**: Årstallet 2019 er forkert; det korrekte er 2017. Simpel rettelse.
- **AlphaGo Move 37**: "Femte omgang" er misvisende; det var AlphaGos 37. træk i parti to. Bør rettes for troværdighed over for fagkyndige læsere.
- **AlphaFold-tidslinje**: "Under et år" er en forenkling der kan udfordres. Præciser for at undgå at fagfolk afviser påstanden.
- **Brug af "man"**: Style-guide-brud der forekommer 15-20 gange. Systematisk gennemgang anbefales.
