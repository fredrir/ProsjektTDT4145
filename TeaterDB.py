import sqlite3
from datetime import datetime

def buy_9_tickets():
    con = sqlite3.connect('fredrik.db')
    cur = con.cursor()

    # Identify rows that have the required number of available seats
    cur.execute("""
        SELECT S.Rad
        FROM Billett B
        JOIN Stol S ON B.StolID = S.StolID
        WHERE B.StykkeID = 2 AND B.BillettID NOT IN (SELECT BillettID FROM BillettKjop)
        GROUP BY S.Rad
        HAVING COUNT(B.BillettID) >= 9
    """)
    rows = cur.fetchall()

    # If there are rows with enough available seats, select the tickets from one of these rows
    if rows:
        cur.execute("""
            SELECT B.BillettID
            FROM Billett B
            JOIN Stol S ON B.StolID = S.StolID
            WHERE B.StykkeID = + AND B.BillettID NOT IN (SELECT BillettID FROM BillettKjop) AND S.Rad = ?
            LIMIT 9
        """, (rows[0][0],))
        missing_tickets = cur.fetchall()

        # Add missing tickets to BillettKjop table
        for ticket in missing_tickets:
            billett_id = ticket[0]
            cur.execute(f"INSERT INTO BillettKjop (BillettID, Tidspunkt, KundeProfilID) VALUES({billett_id}, '{datetime.now()}', 1)")

    con.commit()
    con.close()

# Call the function with the number of tickets you want to add and the play_id
buy_9_tickets()

