#!/bin/bash
set -e

run_sql() {
    sql=$(cat $1)
    clickhouse-client --query="$sql"
}

migrations_dir=./migrations/

for file in $(ls $migrations_dir); do
    run_sql $migrations_dir$file
done

echo "Database inited"