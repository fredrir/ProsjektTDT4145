# TeaterDB

## Hvordan kjøre programmet

### Kjør i terminal:

1. sqlite3 TeaterDB.db < TeaterDB.sql
   - Setter tabellene inn i databasen
2. sqlite3 TeaterDB.db < insert-into-db.sql
   - Setter inn salene, sammen med stoler, teaterstykker, forestillinger, akter, roller, skuespillere og andre medvirkende, slik det er beskrevet i oppgaven

### Kjør i koden:

3. Kjør begge task-2.py
   - Scanner setene fra gamle-scene og hovedscenen og legger til stoler, samt billetter og billettkjøp fra forestillingene som foregår "2024-03-02 19:00:00". Tilfredsstiller brukerhistorie 2.
4. Kjør task-3.py
   - Tilfredsstiller brukerhistorie 3
5. Kjør task-4.py
   - Tilfredsstiller brukerhistorie 4
6. Kjør task-5.py
   - Tilfredsstiller brukerhistorie 5
7. Kjør task-6.py
   - Tilfredsstiller brukerhistorie 6
8. Kjør task-7.py
   - Tilfredsstiller brukerhistorie 7

### Tekstlige resultater fra brukerhistorier:

4. fredrir@fredrir-Swift-SF314-43:~/Projects/WackyDB$ /bin/python3 /home/fredrir/Projects/WackyDB/task-4.py
   Kongsemnene | 2024-03-02 19:00:00 | Billetter solgt: 65
   Størst av alt er kjærligheten | 2024-03-02 18:30:00 | Billetter solgt: 36

5. fredrir@fredrir-Swift-SF314-43:~/Projects/WackyDB$ /bin/python3 /home/fredrir/Projects/WackyDB/task-5.py
   Kongsemnene | Arturo Scotti | Rolle: Harald Haakonson
   Kongsemnene | Emil Olafsson | Rolle: Dagfinn Bonde
   Kongsemnene | Emil Olafsson | Rolle: Jatgeir Skald
   Kongsemnene | Emma C. Deichmann | Rolle: Ingeborg
   Kongsemnene | Emma C. Deichmann | Rolle: Sigrid
   Kongsemnene | Fabian H. Lunde | Rolle: Baard Bratte
   Kongsemnene | Hans Petter Nilsen | Rolle: Skule Jarl
   Kongsemnene | Ingunn B.S Øyen | Rolle: Inga frå Vartejg
   Kongsemnene | Isak H. Sørensen | Rolle: Paal Flida
   Kongsemnene | Madeleine B. Nilsen | Rolle: Ragnhild
   Kongsemnene | Per B. Gulliksen | Rolle: Gregorius Jonsson
   Kongsemnene | Snorre R. Tøndel | Rolle: Peter
   Kongsemnene | Synnøve F. Eriksen | Rolle: Margrete
   Kongsemnene | Thomas J. Takyi | Rolle: Biskop Nikolas
   Størst av alt er kjærligheten | Jo Saberniak | Rolle: Jo Saberniak
   Størst av alt er kjærligheten | Marte M. Steinholt | Rolle: Marte M. Steinholt
   Størst av alt er kjærligheten | Natalie Grøndahl Tangen | Rolle: Natalie Grøndahl Tangen
   Størst av alt er kjærligheten | Sunniva Du Mond Nordal | Rolle: Sunniva Du Mond Nordal
   Størst av alt er kjærligheten | Tor Ivar Hagen | Rolle: Tor Ivar Hagen
   Størst av alt er kjærligheten | Trond-Ove Skrødal | Rolle: Trond-Ove Skrødal
   Størst av alt er kjærligheten | Åsmund Flaten | Rolle: Åsmund Flaten

6. fredrir@fredrir-Swift-SF314-43:~/Projects/WackyDB$ /bin/python3 /home/fredrir/Projects/WackyDB/task-6.py
   Kongsemnene | 65

7. fredrir@fredrir-Swift-SF314-43:~/Projects/WackyDB$ /bin/python3 /home/fredrir/Projects/WackyDB/task-7.py
   Arturo Scotti og Emil Olafsson | Kongsemnene | Akt 1
   Arturo Scotti og Emma C. Deichmann | Kongsemnene | Akt 1
   Arturo Scotti og Fabian H. Lunde | Kongsemnene | Akt 1
   Arturo Scotti og Hans Petter Nilsen | Kongsemnene | Akt 1
   Arturo Scotti og Ingunn B.S Øyen | Kongsemnene | Akt 1
   Arturo Scotti og Isak H. Sørensen | Kongsemnene | Akt 1
   Arturo Scotti og Madeleine B. Nilsen | Kongsemnene | Akt 1
   Arturo Scotti og Per B. Gulliksen | Kongsemnene | Akt 1
   Arturo Scotti og Synnøve F. Eriksen | Kongsemnene | Akt 1
   Arturo Scotti og Thomas J. Takyi | Kongsemnene | Akt 1
   Arturo Scotti og Emil Olafsson | Kongsemnene | Akt 2
   Arturo Scotti og Emma C. Deichmann | Kongsemnene | Akt 2
   Arturo Scotti og Hans Petter Nilsen | Kongsemnene | Akt 2
   Arturo Scotti og Isak H. Sørensen | Kongsemnene | Akt 2
   Arturo Scotti og Per B. Gulliksen | Kongsemnene | Akt 2
   Arturo Scotti og Synnøve F. Eriksen | Kongsemnene | Akt 2
   Arturo Scotti og Thomas J. Takyi | Kongsemnene | Akt 2
   Arturo Scotti og Emil Olafsson | Kongsemnene | Akt 3
   Arturo Scotti og Hans Petter Nilsen | Kongsemnene | Akt 3
   Arturo Scotti og Ingunn B.S Øyen | Kongsemnene | Akt 3
   Arturo Scotti og Isak H. Sørensen | Kongsemnene | Akt 3
   Arturo Scotti og Per B. Gulliksen | Kongsemnene | Akt 3
   Arturo Scotti og Snorre R. Tøndel | Kongsemnene | Akt 3
   Arturo Scotti og Synnøve F. Eriksen | Kongsemnene | Akt 3
   Arturo Scotti og Thomas J. Takyi | Kongsemnene | Akt 3
   Arturo Scotti og Emil Olafsson | Kongsemnene | Akt 4
   Arturo Scotti og Emma C. Deichmann | Kongsemnene | Akt 4
   Arturo Scotti og Hans Petter Nilsen | Kongsemnene | Akt 4
   Arturo Scotti og Isak H. Sørensen | Kongsemnene | Akt 4
   Arturo Scotti og Per B. Gulliksen | Kongsemnene | Akt 4
   Arturo Scotti og Snorre R. Tøndel | Kongsemnene | Akt 4
   Arturo Scotti og Synnøve F. Eriksen | Kongsemnene | Akt 4
   Arturo Scotti og Emil Olafsson | Kongsemnene | Akt 5
   Arturo Scotti og Emma C. Deichmann | Kongsemnene | Akt 5
   Arturo Scotti og Hans Petter Nilsen | Kongsemnene | Akt 5
   Arturo Scotti og Isak H. Sørensen | Kongsemnene | Akt 5
   Arturo Scotti og Madeleine B. Nilsen | Kongsemnene | Akt 5
   Arturo Scotti og Per B. Gulliksen | Kongsemnene | Akt 5
   Arturo Scotti og Snorre R. Tøndel | Kongsemnene | Akt 5
   Arturo Scotti og Synnøve F. Eriksen | Kongsemnene | Akt 5
