CREATE TABLE insurance_v1 (
    age UInt32,
    sex Boolean,
    bmi Float32,
    children UInt32,
    smoker Boolean,
    region Enum8('southeast' = 0, 'southwest' = 1, 'northeast' = 2, 'northwest' = 3),
    charges Float32
) ENGINE = MergeTree
ORDER BY (age, bmi);