INSERT INTO raw.users_raw
SELECT * FROM file('/var/lib/clickhouse/user_files/data/part_10.parquet', 'Parquet');