SELECT model, plate_number, year_made, capacity_tons
FROM vehicles;

SELECT model, plate_number, year_made, capacity_tons
FROM vehicles
WHERE year_made > 2018;


SELECT model, plate_number, capacity_tons
FROM vehicles
LIMIT 5;

INSERT INTO vehicles (plate_number, model, year_made, capacity_tons)
VALUES ('AC0000XX', 'Невідомий автомобіль', NULL, NULL);

SELECT model, capacity_tons
FROM vehicles
WHERE capacity_tons IS NULL;


SELECT model, capacity_tons
FROM vehicles
WHERE capacity_tons IS NOT NULL;

SELECT model, plate_number, year_made, capacity_tons
FROM vehicles
WHERE model = 'Volvo FH' AND year_made > 2018;

