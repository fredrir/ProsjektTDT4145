import sqlite3
from datetime import datetime

def buy_9_tickets():
    con = sqlite3.connect('pelle.db')
    cur = con.cursor()

    cur.execute("""
        SELECT S.Rad
        FROM Billett B
        JOIN Stol S ON B.StolID = S.StolID
        WHERE B.StykkeID = 2 AND B.BillettID NOT IN (SELECT BillettID FROM BillettKjop)
        GROUP BY S.Rad
        HAVING COUNT(B.BillettID) >= 9
    """)
    rows = cur.fetchall()

    if rows:
        cur.execute("""
            SELECT B.BillettID
            FROM Billett B
            JOIN Stol S ON B.StolID = S.StolID
            WHERE B.StykkeID = 2 AND B.BillettID NOT IN (SELECT BillettID FROM BillettKjop) AND S.Rad = ?
            LIMIT 9
        """, (rows[0][0],))
        missing_tickets = cur.fetchall()

        for ticket in missing_tickets:
            billett_id = ticket[0]
            cur.execute(f"INSERT INTO BillettKjop (BillettID, Tidspunkt, KundeProfilID, KundeType) VALUES({billett_id}, '{datetime.now()}', 1, 'Ordinaer')")

    con.commit()
    con.close()

buy_9_tickets()

