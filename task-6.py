import sqlite3

def most_sold_performances ():
    conn = sqlite3.connect('fredrik.db')
    cursor = conn.cursor()

    query = '''
    SELECT
        t.Navn AS Play,
        COUNT(b.BillettID) AS Sold
    FROM
        Billett b
    INNER JOIN Teaterstykke t ON
        b.StykkeID = t.StykkeID
    GROUP BY
        Play
    ORDER BY
        Sold DESC;
    '''

    cursor.execute(query)
    results = cursor.fetchall()
    conn.close()

    if results:
        for row in results:
            print(f"{row[0]} | {row[1]}")
    else:
        print(f"No results found.")
        
most_sold_performances()