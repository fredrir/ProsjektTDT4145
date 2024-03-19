import sqlite3
from datetime import datetime

db_path = 'fredrik.db'

def get_performances_and_ticket_counts(date):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    date = datetime.strptime(date, '%Y-%m-%d')

    query = """
    SELECT 
        Teaterstykke.Navn AS performance_name,
        Forestilling.Tidspunkt AS performance_time,
        COUNT(Billett.BillettID) AS tickets_sold
    FROM 
        Forestilling
    LEFT JOIN 
        Teaterstykke ON Forestilling.StykkeID = Teaterstykke.StykkeID
    LEFT JOIN 
        Billett ON Forestilling.StykkeID = Billett.StykkeID AND DATE(Billett.Tidspunkt) = DATE(Forestilling.Tidspunkt)
    WHERE 
        DATE(Forestilling.Tidspunkt) = ?
    GROUP BY 
        Forestilling.Tidspunkt, Forestilling.StykkeID
    ORDER BY 
        tickets_sold DESC;
    """

    cursor.execute(query, (date.strftime('%Y-%m-%d'),))

    performances = cursor.fetchall()
    if performances:
        for performance in performances:
            print(f"{performance[0]} | {performance[1]} | Billetter solgt: {performance[2]} \n")
    else:
        print("No performances found on this date.")

    conn.close()


get_performances_and_ticket_counts('2024-03-02')
