#!/bin/bash
set -e

run_sql() {
    sql_file=$(cat $1)

    # local sqls=()
    # IFS=$'\n\n' read -d '' -ra sqls <<< "$sql_file"

    # for sql in "${sqls[@]}"; do
    clickhouse-client --query="$sql_file"
    # done
}

migrations_dir=./migrations/

for file in $(ls $migrations_dir); do
    run_sql $migrations_dir$file
done

echo "Database inited"