import sqlite3
from datetime import datetime

db_path = 'TeaterDB.db'

def get_performances_and_ticket_counts(date):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    query = """
    SELECT 
    T.Navn AS performance_name,
    F.Tidspunkt AS performance_time,
    COUNT(BK.BillettID) AS tickets_sold
    FROM 
        Forestilling F
    LEFT JOIN 
        Teaterstykke T ON F.StykkeID = T.StykkeID
    LEFT JOIN 
        Billett B ON F.StykkeID = B.StykkeID AND DATE(B.Tidspunkt) = DATE(F.Tidspunkt)
    LEFT JOIN 
        BillettKjop BK ON B.BillettID = BK.BillettID
    WHERE 
        DATE(F.Tidspunkt) = DATE(?)
    GROUP BY 
        F.Tidspunkt, F.StykkeID
    ORDER BY 
        tickets_sold DESC;
    """

    cursor.execute(query, (date,))

    performances = cursor.fetchall()
    if performances:
        for performance in performances:
            print(f"{performance[0]} | {performance[1]} | Billetter solgt: {performance[2]}")
    else:
        print("No performances found on this date.")

    conn.close()

get_performances_and_ticket_counts('2024-03-02')
