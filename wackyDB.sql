-- KundeProfil
CREATE TABLE
    KundeProfil (
        KundeID INT PRIMARY KEY UNIQUE NOT NULL,
        Navn VARCHAR(255) NOT NULL,
        Adresse VARCHAR(255) NOT NULL,
        Mobilnummer VARCHAR(20) NOT NULL
    );

-- Billett
CREATE TABLE
    Billett (
        BillettID INT PRIMARY KEY UNIQUE NOT NULL,
        StolID INT NOT NULL,
        Salnummer INT NOT NULL,
        KundeType VARCHAR(50) NOT NULL,
        StykkeID INT NOT NULL,
        Tidspunkt DATETIME NOT NULL,
        FOREIGN KEY (StolID, Salnummer) REFERENCES Stol (StolID, Salnummer),
        FOREIGN KEY (StykkeID) REFERENCES Teaterstykke (StykkeID),
        FOREIGN KEY (KundeType) REFERENCES PrisGruppe (KundeType)
    );

-- BillettKjøp
CREATE TABLE
    BillettKjøp (
        BillettID INT PRIMARY KEY UNIQUE NOT NULL,
        KundeProfilID INT NOT NULL,
        Tidspunkt DATETIME NOT NULL,
        FOREIGN KEY (KundeProfilID) REFERENCES KundeProfil (KundeID),
        FOREIGN KEY (BillettID) REFERENCES Billett (BillettID)
    );

-- Stol
CREATE TABLE
    Stol (
        StolID INT NOT NULL,
        Stolnummer INT NOT NULL,
        Salnummer INT NOT NULL,
        Rad INT NOT NULL,
        Område VARCHAR(50) NOT NULL,
        PRIMARY KEY (StolID, Salnummer),
        UNIQUE (StolID, Salnummer),
        FOREIGN KEY (Salnummer) REFERENCES Sal (Salnummer)
    );

-- Sal
CREATE TABLE
    Sal (
        Salnummer INT PRIMARY KEY NOT NULL,
        Navn VARCHAR(255) NOT NULL,
        Kapasitet INT NOT NULL
    );

-- Forestilling
CREATE TABLE
    Forestilling (
        Tidspunkt DATETIME NOT NULL,
        StykkeID INT NOT NULL,
        PRIMARY KEY (Tidspunkt, StykkeID),
        UNIQUE (Tidspunkt, StykkeID),
        FOREIGN KEY (StykkeID) REFERENCES Teaterstykke (StykkeID)
    );

-- Teaterstykke
CREATE TABLE
    Teaterstykke (
        StykkeID INT PRIMARY KEY UNIQUE NOT NULL,
        Navn VARCHAR(255) NOT NULL,
        Salnummer INT NOT NULL,
        FOREIGN KEY (Salnummer) REFERENCES Sal (Salnummer)
    );

-- PrisGruppe
CREATE TABLE
    PrisGruppe (
        StykkeID INT NOT NULL,
        KundeType VARCHAR(50) NOT NULL,
        Pris DECIMAL(10, 2) NOT NULL,
        PRIMARY KEY (StykkeID, KundeType),
        UNIQUE (StykkeID, KundeType),
        FOREIGN KEY (StykkeID) REFERENCES Teaterstykke (StykkeID)
    );

-- Akt
CREATE TABLE
    Akt (
        Nummer INT NOT NULL,
        StykkeID INT NOT NULL,
        Navn VARCHAR(255),
        PRIMARY KEY (Nummer, StykkeID),
        UNIQUE (Nummer, StykkeID),
        FOREIGN KEY (StykkeID) REFERENCES Teaterstykke (StykkeID)
    );

-- Skuespiller
CREATE TABLE
    Skuespiller (
        SkuespillerID INT PRIMARY KEY UNIQUE NOT NULL,
        Navn VARCHAR(255) NOT NULL,
        Epost VARCHAR(255) NOT NULL,
        StykkeID INT NOT NULL,
        FOREIGN KEY (StykkeID) REFERENCES Teaterstykke (StykkeID)
    );

-- AndreMedvirkende
CREATE TABLE
    AndreMedvirkende (
        AnsattID INT PRIMARY KEY UNIQUE NOT NULL,
        Navn VARCHAR(255) NOT NULL,
        Epost VARCHAR(255) NOT NULL,
        StykkeID INT NOT NULL,
        Oppgave VARCHAR(255) NOT NULL,
        AnsattStatus VARCHAR(50),
        FOREIGN KEY (StykkeID) REFERENCES Teaterstykke (StykkeID)
    );

-- Rolle
CREATE TABLE
    Rolle (
        StykkeID INT NOT NULL,
        SkuespillerID INT NOT NULL,
        AktNummer INT NOT NULL,
        RolleNavn VARCHAR(255) NOT NULL,
        PRIMARY KEY (StykkeID, SkuespillerID, AktNummer),
        UNIQUE (StykkeID, SkuespillerID, AktNummer),
        FOREIGN KEY (SkuespillerID) REFERENCES Skuespiller (SkuespillerID),
        FOREIGN KEY (AktNummer, StykkeID) REFERENCES Akt (Nummer, StykkeID)
    );

INSERT Into
    Sal (Salnummer, Navn, Kapasitet)
VALUES
    (1, 'Hovedscenen', 516);

INSERT Into
    Sal (Salnummer, Navn, Kapasitet)
VALUES
    (2, 'Gamle Scene', 332);

INSERT Into
    Sal (Salnummer, Navn, Kapasitet)
VALUES
    (3, 'Studioscenen', 150);

INSERT Into
    Sal (Salnummer, Navn, Kapasitet)
VALUES
    (4, 'Teaterkjelleren', 60);

INSERT Into
    Sal (Salnummer, Navn, Kapasitet)
VALUES
    (5, 'Teaterkafeen', 100);

INSERT INTO
    Stol (StolID, Stolnummer, Salnummer, Rad, Område)
VALUES
    (1, 1, 1, 1, 'Nedre');