CREATE TABLE insurance_v1 (
    age UInt32,
    sex Boolean,
    bmi Float32,
    children UInt32,
    smoker Boolean,
    region String,
    charges Float32
) ENGINE = MergeTree
ORDER BY (age, bmi);