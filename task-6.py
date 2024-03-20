import sqlite3

def most_sold_performances ():
    conn = sqlite3.connect('TeaterDB.db')
    cursor = conn.cursor()

    query = '''
    SELECT 
        T.Navn AS performance_name,
        F.Tidspunkt AS performance_time,
        COUNT(BK.BillettID) AS tickets_sold
    FROM 
        Forestilling F
    JOIN 
        Teaterstykke T ON F.StykkeID = T.StykkeID
    LEFT JOIN 
        Billett B ON F.StykkeID = B.StykkeID AND Date(F.Tidspunkt) = Date(B.Tidspunkt)
    LEFT JOIN 
        BillettKjop BK ON B.BillettID = BK.BillettID
    GROUP BY 
        T.Navn, F.Tidspunkt
    ORDER BY 
        tickets_sold DESC;

    '''

    cursor.execute(query)
    results = cursor.fetchall()
    conn.close()

    if results:
        for row in results:
            print(f"{row[0]} | {row[1]} | {row[2]}")
    else:
        print(f"Ingen resultater funnet.")
        
most_sold_performances()