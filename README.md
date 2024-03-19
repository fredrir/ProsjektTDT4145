# WackyDB

Inkluderer: 
- 2 saler med stoler teaterstykker, forestillinger, akter, roller, skuespillere og andre medvirkende
- 2 forestilliger med pre-kjøpte billetter {gamle-scene.txt} og {hovedscenen.txt}
    - Kjøpt av en "standard bruker"

Muligheter:
- Kjøpe 9 voksenbiletter til forestillingen for "Størst av alt er kjærligheten" 3. feburar
  - Setene er på samme rad, men trenger ikke være ved siden av hverandre
  - Får igjen:
    - Summen av kostnaden for billettene 
    - ikke spesifisert i oppgaven men regner med at stolen også må returneres og endre på ledige billetter
- Ta inn en dato i python og skriver ut hvilke forestillinger som finnes på denne datoen og lister opp hvor mange biletter som er solgt (også med forestillinger uten solgte biletter)
- SQL query som finner navn på skuespillere som opptrer i de forkjellige teaterstykkene
  - skriver ut navn på stykke, navn på skuespiller og rolle
- SQL query som finner hvilke forestillinger som har solgt best
  - Skriver ut navn på forstilling, dato og antall solgte plasser sortert på antall plasser i synkende rekkefølge 
- Python program (og SQL) som tar et skuespillernavn og finner hvilke skuespillere de har spilt med i samme akt
  - Skriver ut nacn på begge og hvilket skuespill det var


## Unwack the Wack!

# Inititalization 

sqlite3 test.db < TeaterDB.sql
sqlite3 test.db < insert-into-db.sql


run both scan-seats.py

#
