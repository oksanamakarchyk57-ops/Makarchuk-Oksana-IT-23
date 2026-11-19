PRAGMA foreign_keys = ON;
UPDATE trips SET duration_min = 510 WHERE id = 3;
SELECT id, driver_id, route_id, trip_date, duration_min FROM trips WHERE id = 3;

UPDATE routes SET distance_km = distance_km + 10 WHERE id = 5;
SELECT id, origin, destination, distance_km FROM routes WHERE id = 5;

SELECT COUNT(*) FROM trips;
DELETE FROM trips WHERE id = 7;
SELECT COUNT(*) FROM trips;

DELETE FROM drivers WHERE id = 1;

INSERT INTO routes (origin, destination, distance_km) VALUES ('Тест', 'Видалення', 50);
INSERT INTO trips (driver_id, route_id, trip_date, duration_min)
VALUES (2, (SELECT id FROM routes WHERE destination = 'Видалення'), '2026-11-20', 60);

SELECT id, route_id FROM trips WHERE trip_date = '2026-11-20';

DELETE FROM routes WHERE destination = 'Видалення';

SELECT id, route_id FROM trips WHERE trip_date = '2026-11-20';

DELETE FROM trips WHERE trip_date = '2026-11-20';