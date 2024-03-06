-- KundeProfil
CREATE TABLE
    KundeProfil (
        KundeID INT PRIMARY KEY NOT NULL,
        Navn VARCHAR(255),
        Adresse VARCHAR(255),
        Mobilnummer VARCHAR(20)
    );

-- BillettKjøp
CREATE TABLE
    BillettKjøp (
        BillettID INT PRIMARY KEY NOT NULL,
        KundeProfilID INT,
        Timestamp DATETIME,
        FOREIGN KEY (KundeProfilID) REFERENCES KundeProfil (KundeID)
    );

-- Billett
CREATE TABLE
    Billett (
        BillettID INT PRIMARY KEY NOT NULL,
        StolID INT,
        KundeType VARCHAR(50),
        StykkeID INT,
        Timestamp DATETIME,
        FOREIGN KEY (StolID) REFERENCES Stol (Stolnummer)
    );

-- Stol
CREATE TABLE
    Stol (
        Stolnummer INT PRIMARY KEY NOT NULL,
        Rad INT,
        Område VARCHAR(50),
        Salnummer INT,
        FOREIGN KEY (Salnummer) REFERENCES Sal (Salnummer)
    );

-- Sal
CREATE TABLE
    Sal (
        Salnummer INT PRIMARY KEY NOT NULL,
        Navn VARCHAR(255),
        Kapasitet INT
    );

-- Forestilling-
CREATE TABLE
    Forestilling (
        Timestamp DATETIME NOT NULL,
        StykkeID INT NOT NULL,
        PRIMARY KEY (Timestamp, StykkeID)
    );

-- Akt
CREATE TABLE
    Akt (
        Nummer INT NOT NULL,
        StykkeID INT NOT NULL,
        Navn VARCHAR(255),
        PRIMARY KEY (Nummer, StykkeID),
        FOREIGN KEY (StykkeID) REFERENCES Forestilling (StykkeID)
    );

-- Skuespiller
CREATE TABLE
    Skuespiller (
        SkuespillerID INT PRIMARY KEY NOT NULL,
        Navn VARCHAR(255),
        Epost VARCHAR(255),
        StykkeID INT,
        FOREIGN KEY (StykkeID) REFERENCES Forestilling (StykkeID)
    );

-- AndreMedvirkende
CREATE TABLE
    AndreMedvirkende (
        AnsattID INT PRIMARY KEY NOT NULL,
        Navn VARCHAR(255),
        Epost VARCHAR(255),
        StykkeID INT,
        Status VARCHAR(50),
        FOREIGN KEY (StykkeID) REFERENCES Forestilling (StykkeID)
    );

-- Rolle
CREATE TABLE
    Rolle (
        StykkeID INT,
        SkuespillerID INT,
        AktNummer INT,
        PRIMARY KEY (StykkeID, SkuespillerID, AktNummer),
        FOREIGN KEY (StykkeID) REFERENCES Forestilling (StykkeID),
        FOREIGN KEY (SkuespillerID) REFERENCES Skuespiller (SkuespillerID),
        FOREIGN KEY (AktNummer) REFERENCES Akt (Nummer)
    );