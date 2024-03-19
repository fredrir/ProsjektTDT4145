import sqlite3

def most_sold_performances ():
    conn = sqlite3.connect('wackyseb.db')
    cursor = conn.cursor()

    query = '''
    SELECT 
    T.Navn AS PerformanceName, 
    F.Tidspunkt AS Date, 
    COUNT(B.BillettID) AS SeatsSold
    FROM 
        Billett B
    JOIN 
        BillettKjop BK ON B.BillettID = BK.BillettID
    JOIN 
        Forestilling F ON B.StykkeID = F.StykkeID AND B.Tidspunkt = F.Tidspunkt
    JOIN 
        Teaterstykke T ON F.StykkeID = T.StykkeID
    GROUP BY 
        T.Navn, F.Tidspunkt
    ORDER BY 
        SeatsSold DESC;
    '''

    cursor.execute(query)
    results = cursor.fetchall()
    conn.close()

    if results:
        for row in results:
            print(f"{row[0]} | {row[2]}")
    else:
        print(f"Ingen resultater funnet.")
        
most_sold_performances()