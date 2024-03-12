BEGIN TRANSACTION;

INSERT INTO Sal (Salnummer, Navn, Kapasitet) VALUES (1, 'Hovedscenen', 516);
INSERT INTO Sal (Salnummer, Navn, Kapasitet) VALUES (2, 'Gamle Scene', 332);
INSERT INTO Sal (Salnummer, Navn, Kapasitet) VALUES (3, 'Studioscenen', 150);
INSERT INTO Sal (Salnummer, Navn, Kapasitet) VALUES (4, 'Teaterkjelleren', 60);
INSERT INTO Sal (Salnummer, Navn, Kapasitet) VALUES (5, 'Teaterkafeen', 100);

INSERT INTO Stol (StolID, Stolnummer, Salnummer, Rad, Område) VALUES (1, 1, 1, 1, 'Nedre');

INSERT INTO Teaterstykke (StykkeID, Navn, Salnummer) VALUES (1, 'Kongsemnene', 1);
INSERT INTO Teaterstykke (StykkeID, Navn, Salnummer) VALUES (2, 'Størst av alt er kjærligheten', 2);

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

INSERT INTO PrisGruppe (

COMMIT;

