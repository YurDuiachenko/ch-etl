CREATE TABLE IF NOT EXISTS raw.users_raw (
    timestamp Int64, 
    geo_id Int16, 
    referer String, 
    user_id Int32, 
    user_agent String
) ENGINE = MergeTree()
ORDER BY user_id;