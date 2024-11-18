CREATE DATABASE IF NOT EXISTS OnlineFitnessAssistant;
USE OnlineFitnessAssistant;
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    weight DOUBLE NOT NULL, -- Weight in kilograms
    height DOUBLE NOT NULL, -- Height in centimeters
    bmi DOUBLE NOT NULL
);
CREATE TABLE WorkoutsAndDiets (
    plan_id INT AUTO_INCREMENT PRIMARY KEY,
    workout_plan TEXT NOT NULL,
    diet_chart TEXT NOT NULL
);
INSERT INTO WorkoutsAndDiets (workout_plan, diet_chart)
VALUES (
    'Monday: Chest and Triceps\nTuesday: Back and Biceps\nWednesday: Rest day\nThursday: Legs and Shoulders\nFriday: Cardio and Abs\nSaturday: Rest day\nSunday: Rest day',
    'Breakfast: Oatmeal with fruits and a glass of milk\nMid-Morning Snack: Greek yogurt with honey\nLunch: Grilled chicken breast with brown rice and vegetables\nAfternoon Snack: Mixed nuts and a banana\nDinner: Baked salmon with quinoa and steamed broccoli\nBefore Bed: A glass of warm milk'
);
INSERT INTO Users (name, age, weight, height, bmi)
VALUES ('John Doe', 30, 75.5, 180.0, 23.3);
SELECT 
    u.name,
    u.age,
    u.weight,
    u.height,
    u.bmi,
    CASE
        WHEN u.bmi < 18.5 THEN 'You are underweight.'
        WHEN u.bmi >= 18.5 AND u.bmi < 24.9 THEN 'You are in the healthy weight range.'
        WHEN u.bmi >= 25 AND u.bmi < 29.9 THEN 'You are overweight.'
        ELSE 'You are obese.'
    END AS bmi_interpretation,
    wd.workout_plan,
    wd.diet_chart
FROM 
    Users u
JOIN 
    WorkoutsAndDiets wd
ON 
    wd.plan_id = 1; -- Assuming a single plan is applied
SELECT * FROM Users;


