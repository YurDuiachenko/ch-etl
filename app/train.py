import pandas as pd
import clickhouse_connect

client = clickhouse_connect.get_client(host='10.20.24.197', port='8123', user='default')

df = client.query_df('SELECT count() FROM default.insurance_v1')

print(1)