BEGIN TRANSACTION;

INSERT INTO
    Sal (Salnummer, Navn, Kapasitet)
VALUES
    (1, 'Hovedscenen', 516),
    (2, 'Gamle Scene', 332),
    (3, 'Studioscenen', 150),
    (4, 'Teaterkjelleren', 60),
    (5, 'Teaterkafeen', 100);

INSERT INTO
    Stol (StolID, Stolnummer, Salnummer, Rad, Område)
VALUES
    (1, 1, 1, 1, 'Nedre');

INSERT INTO
    Teaterstykke (StykkeID, Navn, Salnummer)
VALUES
    (1, 'Kongsemnene', 1),
    (2, 'Størst av alt er kjærligheten', 2);

INSERT INTO
    Akt (Nummer, StykkeID, Navn)
VALUES
    (1, 2, 'Akt 1');

INSERT INTO
    Akt (Nummer, StykkeID, Navn)
VALUES
    (1, 1, 'Akt 1'),
    (2, 1, 'Akt 2'),
    (3, 1, 'Akt 3'),
    (4, 1, 'Akt 4'),
    (5, 1, 'Akt 5');

INSERT INTO
    Skuespiller (SkuespillerID, Navn, Epost, StykkeID)
VALUES
    (
        1,
        'Arturo Scotti',
        'arturo.scotti@example.com',
        1
    ),
    (
        2,
        'Ingunn B.S Øyen',
        'ingunn.oyen@example.com',
        1
    ),
    (
        3,
        'Hans Petter Nilsen',
        'hans.nilsen@example.com',
        1
    ),
    (
        4,
        'Madeleine B. Nilsen',
        'madeleine.nilsen@example.com',
        1
    ),
    (
        5,
        'Synnøve F. Eriksen',
        'synnove.eriksen@example.com',
        1
    ),
    (
        6,
        'Emma C. Deichmann',
        'emma.deichmann@example.com',
        1
    ),
    (
        7,
        'Thomas J. Takyi',
        'thomas.takyi@example.com',
        1
    ),
    (
        8,
        'Per B. Gulliksen',
        'per.gulliksen@example.com',
        1
    ),
    (
        9,
        'Isak H. Sørensen',
        'isak.sorensen@example.com',
        1
    ),
    (
        10,
        'Fabian H. Lunde',
        'fabian.lunde@example.com',
        1
    ),
    (
        11,
        'Emil Olafsson',
        'emil.olafsson@example.com',
        1
    ),
    (
        12,
        'Snorre R. Tøndel',
        'snorre.tondel@example.com',
        1
    );

INSERT INTO
    Skuespiller (SkuespillerID, Navn, Epost, StykkeID)
VALUES
    (
        13,
        'Sunniva Du Mond Nordal',
        'sunniva@example.com',
        '2'
    ),
    (14, 'Jo Saberniak', 'jo@example.com', '2'),
    (
        15,
        'Marte M. Steinholt',
        'marte@example.com',
        '2'
    ),
    (16, 'Trond-Ove Skrødal', 'trond@example.com', '2'),
    (17, 'Tor Ivar Hagen', 'tor@example.com', '2'),
    (
        18,
        'Natalie Grøndahl Tangen',
        'natalie@example.com',
        '2'
    ),
    (19, 'Åsmund Flaten', 'asmund@example.com', '2');

INSERT INTO
    Rolle (StykkeID, SkuespillerID, AktNummer, Rollenavn)
VALUES
    (1, 1, 1, 'Harald Haakonson'),
    (1, 1, 2, 'Harald Haakonson'),
    (1, 1, 3, 'Harald Haakonson'),
    (1, 1, 4, 'Harald Haakonson'),
    (1, 1, 5, 'Harald Haakonson'),
    (1, 11, 1, 'Dagfinn Bonde'),
    (1, 11, 2, 'Dagfinn Bonde'),
    (1, 11, 3, 'Dagfinn Bonde'),
    (1, 11, 4, 'Dagfinn Bonde'),
    (1, 11, 5, 'Dagfinn Bonde'),
    (1, 11, 4, 'Jatgeir Skald'),
    (1, 6, 1, 'Sigrid'),
    (1, 6, 2, 'Sigrid'),
    (1, 6, 5, 'Sigrid'),
    (1, 6, 4, 'Ingeborg'),
    (1, 10, 1, 'Baard Bratte'),
    (1, 3, 1, 'Skule Jarl'),
    (1, 3, 2, 'Skule Jarl'),
    (1, 3, 3, 'Skule Jarl'),
    (1, 3, 4, 'Skule Jarl'),
    (1, 3, 5, 'Skule Jarl'),
    (1, 2, 1, 'Inga frå Vartejg'),
    (1, 2, 3, 'Inga frå Vartejg'),
    (1, 9, 1, 'Paal Flida'),
    (1, 9, 2, 'Paal Flida'),
    (1, 9, 3, 'Paal Flida'),
    (1, 9, 4, 'Paal Flida'),
    (1, 9, 5, 'Paal Flida'),
    (1, 4, 1, 'Ragnhild'),
    (1, 4, 5, 'Ragnhild'),
    (1, 8, 1, 'Gregorius Jonsson'),
    (1, 8, 2, 'Gregorius Jonsson'),
    (1, 8, 3, 'Gregorius Jonsson'),
    (1, 8, 4, 'Gregorius Jonsson'),
    (1, 8, 5, 'Gregorius Jonsson'),
    (1, 5, 1, 'Margrete'),
    (1, 5, 2, 'Margrete'),
    (1, 5, 3, 'Margrete'),
    (1, 5, 4, 'Margrete'),
    (1, 5, 5, 'Margrete'),
    (1, 7, 1, 'Biskop Nikolas'),
    (1, 7, 2, 'Biskop Nikolas'),
    (1, 7, 3, 'Biskop Nikolas'),
    (1, 12, 3, 'Peter'),
    (1, 12, 4, 'Peter'),
    (1, 12, 5, 'Peter');

INSERT INTO
    AndreMedvirkende (
        AnsattID,
        Navn,
        Epost,
        StykkeID,
        Oppgave,
        AnsattStatus
    )
VALUES
    (
        1,
        'Yury Butusov',
        'Yury@example.com',
        1,
        'Regi og Musikkutvelgelse',
        'Fast'
    ),
    (
        2,
        'Aleksandr Shishkin-Hokusai',
        'Aleksandr@example.com',
        1,
        'Scenografi og kostymer',
        'Fast'
    ),
    (
        3,
        'Eivind Myren',
        'Eivind@example.com',
        1,
        'Lysdesign',
        'Fast'
    ),
    (
        4,
        'Mina Rype Stokke',
        'Mina@example.com',
        1,
        'Dramaturg',
        'Fast'
    ),
    (
        5,
        'Jonas Corell Petersen',
        'Jonas@example.com',
        2,
        'Regi',
        'Fast'
    ),
    (
        6,
        'David Gehrt',
        'David@example@.com',
        2,
        'Scenografi og kostymer',
        'Fast'
    );

INSERT INTO
    Forestilling (Tidspunkt, StykkeID)
VALUES
    ('2024-01-02 19:00:00', 1),
    ('2024-02-02 19:00:00', 1),
    ('2024-03-02 19:00:00', 1),
    ('2024-05-02 19:00:00', 1),
    ('2024-06-02 19:00:00', 1),
    ('2024-03-02 18:30:00', 2),
    ('2024-06-02 18:30:00', 2),
    ('2024-07-02 18:30:00', 2),
    ('2024-12-02 18:30:00', 2),
    ('2024-13-02 18:30:00', 2),
    ('2024-14-02 18:30:00', 2);

INSERT INTO
    PrisGruppe (StykkeID, KundeType, Pris)
VALUES
    (1, 'Ordinaer', 450),
    (1, 'Honnoer', 380),
    (1, 'Student', 280),
    (1, 'Gruppe 10', 420),
    -- Min 10 personer
    (1, 'Gruppe honnoer 10', 360),
    (2, 'Ordinaer', 350),
    (2, 'Honnoer', 300),
    (2, 'Student', 220),
    (2, 'Barn', 220),
    (2, 'Gruppe 10', 320),
    (2, 'Gruppe honnoer 10', 270);

COMMIT;