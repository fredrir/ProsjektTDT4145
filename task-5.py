import sqlite3

def performing_actors():
    conn = sqlite3.connect('fredrik.db')
    cursor = conn.cursor()

    query = '''
    SELECT DISTINCT
        T.Navn AS PlayName,
        S.Navn AS ActorName,
        R.RolleNavn AS Role
    FROM
        Teaterstykke T
    JOIN Skuespiller S ON T.StykkeID = S.StykkeID
    JOIN Rolle R ON S.SkuespillerID = R.SkuespillerID AND T.StykkeID = R.StykkeID
    ORDER BY
        T.Navn, S.Navn, R.RolleNavn;
    '''
    cursor.execute(query)
    results = cursor.fetchall()
    conn.close()

    if results:
        for row in results:
            print(f"{row[0]} | {row[1]} | Rolle: {row[2]}")
    else:
        print(f"No results found.")
        


performing_actors()
