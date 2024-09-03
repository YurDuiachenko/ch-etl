#!/bin/bash
set -e

init_db=$(cat ./sql/init/init_db.sql)

clickhouse-client --query="$init_db"

echo "Database inited"