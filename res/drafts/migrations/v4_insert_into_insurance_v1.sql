INSERT INTO insurance_v1 
SELECT 
    age,
    if(sex = 'male', true, false), 
    bmi, 
    children, 
    if(smoker = 'yes', true, false) AS smoker, 
    region, 
    charges
FROM insurance;