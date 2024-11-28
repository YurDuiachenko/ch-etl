INSERT INTO raw.users_raw
SELECT * FROM file('/var/lib/clickhouse/user_files/data/part_0.parquet', 'Parquet');