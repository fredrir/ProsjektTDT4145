BEGIN TRANSACTION;

INSERT INTO Sal (Salnummer, Navn, Kapasitet) VALUES (1, 'Hovedscenen', 516);
INSERT INTO Sal (Salnummer, Navn, Kapasitet) VALUES (2, 'Gamle Scene', 332);
INSERT INTO Sal (Salnummer, Navn, Kapasitet) VALUES (3, 'Studioscenen', 150);
INSERT INTO Sal (Salnummer, Navn, Kapasitet) VALUES (4, 'Teaterkjelleren', 60);
INSERT INTO Sal (Salnummer, Navn, Kapasitet) VALUES (5, 'Teaterkafeen', 100);

INSERT INTO Stol (StolID, Stolnummer, Salnummer, Rad, Område) VALUES (1, 1, 1, 1, 'Nedre');

INSERT INTO Teaterstykke (StykkeID, Navn, Salnummer) VALUES (1, 'Kongsemnene', 1);
INSERT INTO Teaterstykke (StykkeID, Navn, Salnummer) VALUES (2, 'Størst av alt er kjærligheten', 2);

INSERT INTO Akt (Nummer, StykkeID, Navn) VALUES (1, 2, 'Akt 1');

INSERT INTO Akt (Nummer, StykkeID, Navn) VALUES (1, 1, 'Akt 1');
INSERT INTO Akt (Nummer, StykkeID, Navn) VALUES (2, 1, 'Akt 2');
INSERT INTO Akt (Nummer, StykkeID, Navn) VALUES (3, 1, 'Akt 3');
INSERT INTO Akt (Nummer, StykkeID, Navn) VALUES (4, 1, 'Akt 4');
INSERT INTO Akt (Nummer, StykkeID, Navn) VALUES (5, 1, 'Akt 5');

INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (1, 'Arturo Scotti', 'arturo.scotti@example.com', 1);
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (2, 'Ingunn B.S Øyen', 'ingunn.oyen@example.com', 1);
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (3, 'Hans Petter Nilsen', 'hans.nilsen@example.com', 1);
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (4, 'Madeleine B. Nilsen', 'madeleine.nilsen@example.com', 1);
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (5, 'Synnøve F. Eriksen', 'synnove.eriksen@example.com', 1);
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (6, 'Emma C. Deichmann', 'emma.deichmann@example.com', 1);
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (7, 'Thomas J. Takyi', 'thomas.takyi@example.com', 1);
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (8, 'Per B. Gulliksen', 'per.gulliksen@example.com', 1);
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (9, 'Isak H. Sørensen', 'isak.sorensen@example.com', 1);
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (10, 'Fabian H. Lunde', 'fabian.lunde@example.com', 1);
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (11, 'Emil Olafsson', 'emil.olafsson@example.com', 1);
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (12, 'Snorre R. Tøndel', 'snorre.tondel@example.com', 1);


INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (13, 'Sunniva Du Mond Nordal', 'sunniva@example.com', '2');
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (14, 'Jo Saberniak', 'jo@example.com', '2');
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (15, 'Marte M. Steinholt', 'marte@example.com', '2');
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (16, 'Trond-Ove Skrødal', 'trond@example.com', '2');
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (17, 'Tor Ivar Hagen', 'tor@example.com', '2');
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (18, 'Natalie Grøndahl Tangen', 'natalie@example.com', '2');
INSERT INTO Skuespiller (SkuespillerID, Navn, Epost, StykkeID) VALUES (19, 'Åsmund Flaten', 'asmund@example.com', '2');

INSERT INTO Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn) VALUES (1,1,1(2,3,4,5), 'Harald Haakonson');
INSERT INTO Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn) VALUES (1,11,1(2,3,4,5), 'Dagfinn Bonde');
INSERT INTO Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn) VALUES (1,11,4, 'Jatgeir Skald');
INSERT INTO Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn) VALUES (1,6,1(2,5), 'Sigrid');
INSERT INTO Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn) VALUES (1, 6, 4, 'Ingeborg');
INSERT INTO Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn) VALUES (1, 10, 1, 'Baard Bratte');
INSERT INTO Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn) VALUES (1, 3, 1(2,3,4,5), 'Skule Jarl');
INSERT INTO Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn) VALUES (1, 2, 1(3), 'Inga frå Vartejg');
INSERT INTO Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn) VALUES (1, 9, 1(2,3,4,5), 'Paal Flida');
INSERT INTO Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn) VALUES (1, 4, 1(5), 'Ragnhild');
INSERT INTO Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn) VALUES (1, 8, 1(2,3,4,5), 'Gregorius Jonsson');
INSERT INTO Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn) VALUES (1, 5, 1(2,3,4,5), 'Margrete');
INSERT INTO Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn) VALUES (1, 7, 1(2,3), 'Biskop Nikolas');
INSERT INTO Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn) VALUES (1, 12, 3(4,5), 'Peter');

INSERT INTO AndreMedvirkende (AnsattID, Navn, Epost, StykkeID, Oppgave, AnsattStatus) VALUES (1, 'Yury Butusov','Yury@example.com', 1, 'Regi og Musikkutvelgelse', 'Fast');
INSERT INTO AndreMedvirkende (AnsattID, Navn, Epost, StykkeID, Oppgave, AnsattStatus) VALUES (2, 'Aleksandr Shishkin-Hokusai', 'Aleksandr@example.com', 1, 'Scenografi og kostymer', 'Fast');
INSERT INTO AndreMedvirkende (AnsattID, Navn, Epost, StykkeID, Oppgave, AnsattStatus) VALUES (3, 'Eivind Myren', 'Eivind@example.com', 1, 'Lysdesign', 'Fast');
INSERT INTO AndreMedvirkende (AnsattID, Navn, Epost, StykkeID, Oppgave, AnsattStatus) VALUES (4, 'Mina Rype Stokke', 'Mina@example.com', 1, 'Dramaturg', 'Fast');

INSERT INTO AndreMedvirkende (AnsattID, Navn, Epost, StykkeID, Oppgave, AnsattStatus) VALUES (5, 'Kjersti Horn', 

INSERT INTO Forestilling (Tidspunkt, StykkeID) VALUES ('2024-01-02 19:00:00', 1); 
INSERT INTO Forestilling (Tidspunkt, StykkeID) VALUES ('2024-02-02 19:00:00', 1); 
INSERT INTO Forestilling (Tidspunkt, StykkeID) VALUES ('2024-03-02 19:00:00', 1); 
INSERT INTO Forestilling (Tidspunkt, StykkeID) VALUES ('2024-05-02 19:00:00', 1); 
INSERT INTO Forestilling (Tidspunkt, StykkeID) VALUES ('2024-06-02 19:00:00', 1); 

INSERT INTO Forestilling (Tidspunkt, StykkeID) VALUES ('2024-03-02 18:30:00', 2); 
INSERT INTO Forestilling (Tidspunkt, StykkeID) VALUES ('2024-06-02 18:30:00', 2); 
INSERT INTO Forestilling (Tidspunkt, StykkeID) VALUES ('2024-07-02 18:30:00', 2); 
INSERT INTO Forestilling (Tidspunkt, StykkeID) VALUES ('2024-12-02 18:30:00', 2); 
INSERT INTO Forestilling (Tidspunkt, StykkeID) VALUES ('2024-13-02 18:30:00', 2); 
INSERT INTO Forestilling (Tidspunkt, StykkeID) VALUES ('2024-14-02 18:30:00', 2);

INSERT INTO PrisGruppe (StykkeID, KundeType, Pris) VALUES (1, 'Ordinaer', 450);
INSERT INTO PrisGruppe (StykkeID, KundeType, Pris) VALUES (1, 'Honnoer', 380);
INSERT INTO PrisGruppe (StykkeID, KundeType, Pris) VALUES (1, 'Student', 280);
INSERT INTO PrisGruppe (StykkeID, KundeType, Pris) VALUES (1, 'Gruppe 10', 420); -- Min 10 personer
INSERT INTO PrisGruppe (StykkeID, KundeType, Pris) VALUES (1, 'Gruppe honnoer 10', 360);

INSERT INTO PrisGruppe (StykkeID, KundeType, Pris) VALUES (2, 'Ordinaer', 350);
INSERT INTO PrisGruppe (StykkeID, KundeType, Pris) VALUES (2, 'Honnoer', 300);
INSERT INTO PrisGruppe (StykkeID, KundeType, Pris) VALUES (2, 'Student', 220);
INSERT INTO PrisGruppe (StykkeID, KundeType, Pris) VALUES (2, 'Barn', 220); 
INSERT INTO PrisGruppe (StykkeID, KundeType, Pris) VALUES (2, 'Gruppe 10', 320); -- Min 10 personer
INSERT INTO PrisGruppe (StykkeID, KundeType, Pris) VALUES (2, 'Gruppe honnoer 10', 270);



COMMIT;

