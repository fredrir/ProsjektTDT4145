import sqlite3
from datetime import datetime

def scan_seats_hovedscenen(scene_data, date):
    con = sqlite3.connect('test.db')
    cur = con.cursor()
    stol_id = 1

    with open(scene_data, 'r') as file:
        data = file.read()

    lines = data.split('\n')[::-1]
    section_name = ''
    row_index = 0

    for line in lines:
        if 'Galleri' in line or 'Parkett' in line:
            section_name = line.strip()  
            row_index = 0  
        else:
            row_index += 1
            for seat_index, seat in enumerate(line, start=1):
                if seat in ['1', '0']:
                    cur.execute(f"INSERT OR IGNORE INTO Stol (StolID, Stolnummer, Salnummer, Rad, Område) VALUES ({stol_id}, {seat_index}, 1, {row_index}, '{section_name}')")
                    cur.execute(f"INSERT OR IGNORE INTO Billett (BillettID, StolID, Salnummer, StykkeID, Tidspunkt) VALUES({stol_id}, {stol_id}, 1, 1, '{date}') ")
                    stol_id += 1
                if seat == '1' and date == "2024-03-02 19:00:00":
                    cur.execute(f"INSERT OR IGNORE INTO KundeProfil (KundeID, Navn, Adresse, Mobilnummer) VALUES (1, 'Ola Nordmann', 'Osloveien 1', '12345678')")
                    cur.execute(f"INSERT INTO BillettKjop (BillettID, Tidspunkt, KundeProfilID, KundeType) VALUES({stol_id}, '{datetime.today()}', 1, 'Ordinaer')")
    con.commit()
    con.close()

scan_seats_hovedscenen('hovedscenen.txt', '2024-03-02 19:00:00')


                    

                

