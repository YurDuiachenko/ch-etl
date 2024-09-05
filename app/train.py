# работает по HTTP для нормисов
# import clickhouse_connect

# client = clickhouse_connect.get_client(host='192.168.103.251', port='8123', user='default', )
# df = client.query_df('SHOW * FROM default.insurance')
# print(df)

# быстрее потому что работает по нативному TCP-интерфейсу
from clickhouse_driver import Client

client = Client('192.168.103.251')
result = client.execute("SELECT * FROM default.insurance")
print(result)

print(1)