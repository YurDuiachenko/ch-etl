CREATE TABLE IF NOT EXISTS insurance (
    age UInt32,
    sex String,
    bmi Float32,
    children UInt32,
    smoker String,
    region String,
    charges Float32
) ENGINE = MergeTree
ORDER BY (age, bmi);