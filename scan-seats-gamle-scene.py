def scan_seats_gamle_scene(scene_data, scene_name, date):
    sql_statements = []
    chair_id = 1  
    performance_id = 1  
    lines = scene_data.split('\n')
    section_name = ''
    row_index = 0

    for line in lines:
        if 'Galleri' in line or 'Balkong' in line or 'Parkett' in line:
            section_name = line.strip()  
            row_index = 0  
        else:
            row_index += 1
            for seat_index, seat in enumerate(line, start=1):
                if seat in ['1', 'x']:  
                    insert_chair_sql = f"INSERT INTO Stol (StolID, Stolnummer, Salnummer, Rad, Område) VALUES ({chair_id}, {seat_index}, (SELECT Salnummer FROM Sal WHERE Navn = '{scene_name}'), {row_index}, '{section_name}') ON DUPLICATE KEY UPDATE StolID = StolID;"
                    insert_ticket_sql = f"INSERT INTO Billett (BillettID, StolID, Salnummer, KundeType, StykkeID, Tidspunkt) VALUES ({chair_id}, {chair_id}, (SELECT Salnummer FROM Sal WHERE Navn = '{scene_name}'), 'Standard', {performance_id}, '{date} 19:00:00');"
                    sql_statements.append(insert_chair_sql)
                    sql_statements.append(insert_ticket_sql)
                    chair_id += 1  

    return sql_statements

gamle_scene_data = """
Galleri
00000000000000000
000000000000000000
000001100000000000000000000000000
Balkong
00000000000000000
0000000000000000000000
110000000000000000000000000
0000000000000000000000000000
Parkett
00000001000000
00000001000000000
00000001000000000
000000011000000000
00000001000000000
000000011000000000
000110011000000000
00011000100000000
1110000010000000
110000011000000000
"""

sql_statements = scan_seats_gamle_scene(gamle_scene_data, "Gamle Scene", "2024-02-03")

for statement in sql_statements: 
    print(statement)
