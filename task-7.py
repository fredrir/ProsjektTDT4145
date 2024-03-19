import sqlite3

def find_actors_who_played_together(actor_name):
    conn = sqlite3.connect('fredrik.db')
    cursor = conn.cursor()

    query = '''
    SELECT
        s1.Navn AS Actor1,
        s2.Navn AS Actor2,
        t.Navn AS Play,
        a.Navn AS Act
    FROM
        Rolle r1
    INNER JOIN Rolle r2 ON
        r1.StykkeID = r2.StykkeID AND r1.AktNummer = r2.AktNummer AND r1.SkuespillerID < r2.SkuespillerID
    INNER JOIN Skuespiller s1 ON
        r1.SkuespillerID = s1.SkuespillerID
    INNER JOIN Skuespiller s2 ON
        r2.SkuespillerID = s2.SkuespillerID
    INNER JOIN Teaterstykke t ON
        r1.StykkeID = t.StykkeID
    INNER JOIN Akt a ON
        r1.StykkeID = a.StykkeID AND r1.AktNummer = a.Nummer
    WHERE
        s1.Navn = ? OR s2.Navn = ?
    GROUP BY
        Actor1, Actor2, Play, Act
    ORDER BY
        Play, Act;
    '''

    cursor.execute(query, (actor_name, actor_name))
    results = cursor.fetchall()
    conn.close()

    if results:
        for row in results:
            print(f"{row[0]} og {row[1]} | {row[2]} | {row[3]}")
    else:
        print(f"No results found for {actor_name}.")

find_actors_who_played_together('Arturo Scotti')
