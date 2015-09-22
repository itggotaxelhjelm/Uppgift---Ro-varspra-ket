# Rövarspråket #

Den här uppgiften går ut på att skriva funktioner som kan översätt till och från rövarspråket

## Bedömningsmatris ##

## Planering ##

| Förmågor                         | E 																																   | C | A |
|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------|---|---|
| Aktivitetsdiagram och pseudokod  | Du använder pseudokod och/eller aktivitetsdiagram för att planera dina uppgifter utifrån exempel, eller i samråd med utbildaren.  | Som för E, men utan exempel eller handledning |   |
| Anpassning					   | Du anpassar med viss säkerhet planeringen till uppgiften 																		   |   | Som för E, men med säkerhet
| Utformning                       | Du väljer med viss säkerhet lämpliga kontrollstrukturer, metoder, variabler, datastrukturer och algoritmer | | Som för E, men du väljer med säkerhet, och motiverar utförligt dina val.|
| Utvärdering | Med viss säkerhet utvärderar du, med enkla omdömen, programmets prestanda, använder datalogiska begrepp, och bedömer din egen förmåga | som för E, men med nyanserade omdömen | Som för C, men med säkerhet, och med förbättringsförslag

## Syntax och Teori ##
| Förmågor                                       | E 																			| C | A |
|------------------------------------------------|------------------------------------------------------------------------------|---|---|
| Datatyper					                     | Du kan redogöra för och använda de vanligaste datatyperna                    |   |   |
| Grundläggande syntax		                     | Du kan redogöra för och använda programmeringsspråkets grundläggande syntax  |   |   |
| Villkor och IF-satser		                     | Du kan redogöra för och använda villkor och IF-satser                        |   |   |
| Loopar & iteration                             | Du kan redogöra för och använda loopar och iterera över listor               |   |   |

## Kodning och kodningsstil ##

| Förmågor                                      | E                                                                         | C                                               | A                                              |
|-----------------------------------------------|---------------------------------------------------------------------------|-------------------------------------------------|------------------------------------------------|
| Komplexitet									| Du kan skriva enkla program                                               | Du kan skriva lite mer avancerade program       | Du kan skriva komplexa program
| Sekventiell- & funktionsbaserad programmering | Du använder dig av sekventiell programmering och fördefinerade funktioner | Du skapar och använder enkla funktioner         | Du skapar mer komplexa funktioner              |
| Struktur		 				                | Du skriver kod som är delvis strukturerad, har en konsekvent kodningsstil och tydlig namngivning | Som för E, men du skriver kod som är helt strukturerad |   			   |
| Felsökning                                    | Du felsöker på egen hand enkla syntaxfel | Som för E, men systematiskt, och dessutom även körtidsfel och programmeringslogiska fel | Som för C, men med effektivitet   	   |
| Undantagshantering                            |     																		| Du validerar användardata						  | Som för C, men du skriver även kod som använder undantagshantering |
| Dokumentering 								| Du skriver kod som är delvis kommenterad									|  												  | Du skriver kod som är utförligt kommenterad    |


## Datastrukturer ##

| Förmågor        | E 														   | C 																     | A 									 |
|-----------------|------------------------------------------------------------|---------------------------------------------------------------------|---------------------------------------|
| Listor          | Du kan redogöra för och använda dig av listor (Array)      |   																     |   									 |
| Hashtabeller    | Du kan redogöra för vad hashtabeller (Hash) är             | Du kan använda dig av hashtabeller 							     |   									 |


## Algoritmer ##

| Förmågor               | E                                                                    | C 															   | A 														|
|------------------------|----------------------------------------------------------------------|------------------------------------------------------------------|--------------------------------------------------------|
| Rekursion              |   																	| Du kan implementera rekursiva algoritmer i samråd med utbildaren | Du kan på egen hand implementera rekursiva algoritmer  |

## Gränssnitt ##
| Förmågor                     | E 																																   | C 							 | A |
|------------------------------|-----------------------------------------------------------------------------------------------------------------------------------|-----------------------------|--------------------------|
| Interaktion med användaren   | Du använder med viss säkerhet ett uttryckssätt som är anpassat för att på ett tillfredsställande sätt interagera med användaren.  |   |  Som för E, men med säkerhet och på ett gott sätt  |

## Uppgiftsbeskrivning ##


Försvarsmakten behöver ett nytt system för att kryptera sin kommunikation. Efter att ha utvärderat olika system har de valt rövarspråket.

### Rövarspråkets uppbyggnad ###

För varje konsonant (B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Z) i strängen som ska krypteras lägger man till ett "O", följt av samma konsonant igen.

Exempel: "f" blir "fof", "d" blir "dod", "n" blir "non".

Vokalerna (A, E, I, O, U, Y, Å, Ä, Ö) är oförändrade.

Exempel: "Jag talar rövarspråket" blir "Jojagog totalolaror rorövovarorsospoproråkoketot"

Du skall skriva två funktioner: `rovarize` och `derovarize`

`rovarize` tar en sträng i klartext som argument och returnerar strängen omvandlad till rövarspråket

`derovarize` tar en krypterad sträng som argument och returnerar strängen omvandlad till klartext

### Exempel ###

#### Ruby ####

```ruby

    rovarize(cleartext: 'I like turtles')   #=> 'I lolikoke toturortotlolesos'
    rovarize(cleartext: 'Allt är toppen!')  #=> 'Alolloltot äror totopoppopenon!'

    derovarize(cipher: 'Tothohisos a bobitot hoharordoderor')                #=> 'This is a bit harder'
    derovarize(cipher: 'Bobajojsosaror bobjojörornonaror i soskokogogenon?') #=> 'Bajsar björnar i skogen?'

```



#### Python ####

```python

    rovarize(cleartext='I like turtles')   >>> 'I lolikoke toturortotlolesos'
    rovarize(cleartext='Allt är toppen!')  >>> 'Alolloltot äror totopoppopenon!'

    derovarize(cipher='Tothohisos a bobitot hoharordoderor') >>> 'This is a bit harder'
    derovarize(cipher='Bobajojsosaror bobjojörornonaror i soskokogogenon?') >>> 'Bajsar björnar i skogen?'

```

## Genomförande ##

### Versionshantering ###

Gör en `fork` av repot. Klona sen ner till din dator. Kom ihåg att checka in dina ändringar och synka med GitHub.

### Flödesschema ###

Innan du börjar koda ska du skapa ett flödesschema för programmet.
När du känner att du har ett fungerande flödesschema, be läraren att kolla på det.

### Kodning ###

Programmet skall utvecklas med hjälp av testerna.

##### Ruby #####

Kör `bundle install` för att installera alla dependencies (och `rbenv rehash` om rspec inte redan var installerat)

Skapa funktionerna i `lib/rovarizer.rb`

Testerna finns i `spec/rovarize_test.rb` & `spec/derovarize_test.rb`.

Kör `ruby spec/funktionens_namn_test` för att köra testerna för den specifika funktionen

##### Python #####

Skapa funktionerna i `lib/rovarizer.py`

#TODO: Uppdatera med korrekta länkar till testfilerna
Testerna finns i `test/rovarize_test.py` & `test/derovarize_test.py`

Kör `nosetests test/funktionens_namn_test.py` för att köra testerna för den specifika funktionen, eller enbart `nosetests` för att köra samtliga testfiler.

## Tips och länkar ##

* Om du inte kan beskriva lösningen i ord kommer det vara så gott som omöjligt att skapa ett flödesschema
* Fundera på vilka variabler som behövs
* Testa flödesschemat med hjälp av penna och papper