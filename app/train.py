import pandahouse as ph
 
connection = {'host': 'http://localhost:8123',
              'database': 'default'}

query = 'SELECT * FROM insurance'
df = ph.read_clickhouse(query, connection=connection)
 
print(df.head())
print(1)