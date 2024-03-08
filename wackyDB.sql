-- KundeProfil
CREATE TABLE
    KundeProfil (
        KundeID INT PRIMARY KEY UNIQUE NOT NULL,
        Navn VARCHAR(255),
        Adresse VARCHAR(255),
        Mobilnummer VARCHAR(20)
    );

-- Billett
CREATE TABLE
    Billett (
        BillettID INT PRIMARY KEY UNIQUE NOT NULL,
        StolID INT NOT NULL,
        Salnummer INT NOT NULL,
        KundeType VARCHAR(50) NOT NULL,
        StykkeID INT NOT NULL,
        Tidspunkt DATETIME,
        FOREIGN KEY (StolID) REFERENCES Stol (Stolnummer),
        FOREIGN KEY (StykkeID) REFERENCES Teaterstykke (StykkeID)
    );

-- BillettKjøp
CREATE TABLE
    BillettKjøp (
        BillettID INT PRIMARY KEY UNIQUE NOT NULL,
        KundeProfilID INT NOT NULL,
        Tidspunkt DATETIME,
        FOREIGN KEY (KundeProfilID) REFERENCES KundeProfil (KundeID),
        FOREIGN KEY (BillettID) REFERENCES Billett (BillettID)
    );

-- Stol
CREATE TABLE
    Stol (
        Stolnummer INT PRIMARY KEY UNIQUE NOT NULL,
        Salnummer INT NOT NULL,
        Rad INT,
        Område VARCHAR(50),
        FOREIGN KEY (Salnummer) REFERENCES Sal (Salnummer)
    );

-- Sal
CREATE TABLE
    Sal (
        Salnummer INT PRIMARY KEY NOT NULL,
        Navn VARCHAR(255),
        Kapasitet INT
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
        Navn VARCHAR(255),
        Salnummer INT NOT NULL,
        FOREIGN KEY (Salnummer) REFERENCES Sal (Salnummer)
    );

-- PrisGruppe
CREATE TABLE
    PrisGruppe (
        StykkeID INT,
        KundeType VARCHAR(50),
        Pris DECIMAL(10, 2),
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
        Navn VARCHAR(255),
        Epost VARCHAR(255),
        StykkeID INT NOT NULL,
        FOREIGN KEY (StykkeID) REFERENCES Teaterstykke (StykkeID)
    );

-- AndreMedvirkende
CREATE TABLE
    AndreMedvirkende (
        AnsattID INT PRIMARY KEY UNIQUE NOT NULL,
        Navn VARCHAR(255),
        Epost VARCHAR(255),
        StykkeID INT NOT NULL,
        AnsattStatus VARCHAR(50),
        FOREIGN KEY (StykkeID) REFERENCES Teaterstykke (StykkeID)
    );

-- Rolle
CREATE TABLE
    Rolle (
        StykkeID INT,
        SkuespillerID INT,
        AktNummer INT,
        RolleNavn VARCHAR(255),
        PRIMARY KEY (StykkeID, SkuespillerID, AktNummer),
        UNIQUE (StykkeID, SkuespillerID, AktNummer),
        FOREIGN KEY (StykkeID) REFERENCES Teaterstykke (StykkeID),
        FOREIGN KEY (SkuespillerID) REFERENCES Skuespiller (SkuespillerID),
        FOREIGN KEY (AktNummer) REFERENCES Akt (Nummer)
    );