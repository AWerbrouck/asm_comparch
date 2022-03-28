################################################################################
#Gelieve elke keer op de volgende lijn te antwoorden
#Je mag (#) gebruiken als comment voor jezelf, die lijnen worden genegeerd
#Alles <tussen> "diamond brackets" mogen vervangen worden door je antwoord.
################################################################################

0.1 Groepsnummer
21

0.2 Groepsleden
Ferhat Akbulut
Arthur Werbrouck

################################################################################

1.1 Hoeveel klokcycli heb je nodig voor narayana(8), 1000 keer te berekenen?
60656816

################################################################################

2.1 Welke aanpassingen kan je maken, om de stapel te herleiden tot het minimum? (Bondig/algemene uitleg is voldoende)

Overal waar er shifts van 20, 16, 12 waren bij de ebp register kunnen we 8 aftrekken zodat er minder memory op de stack wordt gebruikt.

2.2 Wat is de klokcyli verbetering voor narayana(8) nu?
0

2.3 Let uit waarom je deze verbetering hebt?
Er is geen verbetering omdat we geen instructies hebben weg gedaan. Het enige dat anders is is hoeveel memory we gebruiken op de stack.

################################################################################

3.1 Hoeveel klokcyli verbetering had de beste optmisatie?
20002000

3.2 Waarom is dit de beste optimisatie? Is er een bepaald soort instructie(s) die een grotere impact hebben?
Door de waarde 1 er direct in te steken besparen we ons een write statement.
Als we de input in een register steken maken we onze reads meer efficient.
We weten dat write meer intensief is dan read, dus een write instuctie minder
heeft dus ook een veel grotere impact dan de read instuctie efficienter en
sneller te maken.


################################################################################

4.1 Hoeveel klokcyli verbetering had de 1ste beste optmisatie?
9535000

4.2 Waarom dacht je dit de beste optimisatie was?
Door onze uitkomst direct in eax te steken, en de bewerkingen ook direct op eax
uit te voeren besparen we heel veel moves en dus instructies. Voordien slogen
we het op in de stack en staken we het op het einde terug in eax.
We dachten dat dit een grote impact zou hebben omdat we minder reads en writes
doen. Maar het is nog veel groter dan verwacht, hieruit kunnen we zien dat read
en write zeer intensieve instructies zijn.

4.3 Hoeveel klokcyli verbetering had de 2de beste optmisatie?
13000

4.4 Waarom dacht je dit de beste optimisatie was?
Door de jump enkel uit te voeren als de compare true is besparen we een
instructie. Voordien jumpte we als het groter was **en** als het kleiner was.
Nu jumpen we als het kleiner is en anders lopen we gewoon door.
We dachten dat dit een grote impact zou zijn omdat het een instuctie minder is
en een duidelijkere flow heeft. Maar de impact is niet zeer groot.

################################################################################

# 5. Maak het CFG op een apparte pdf

################################################################################

6.1 Hoe worden het argument "n" doorgegeven in zijn 64-bit versie?
<antwoord>

6.2 Hoe worden het argument "n" doorgegeven in zijn 32-bit versie?
<antwoord>

6.3 Wat zou de impact zijn op uitvoeringstijd? Waarom is dit zo?
<uitleg>
<...>

################################################################################

7.1 Hoeveel klokcyli verbetering heb je dankzij de 64-bit oproepconventie?
<#cycli>

################################################################################

8.1 Hoeveel klokcyli verbetering had de 1ste beste optmisatie?
<#cycli>

8.2 Waarom dacht je dit de beste optimisatie was?
<uitleg>
<...>

8.3 Hoeveel klokcyli verbetering had de 2de beste optmisatie?
<#cycli>

8.4 Waarom dacht je dit de beste optimisatie was?
<uitleg>
<...>
