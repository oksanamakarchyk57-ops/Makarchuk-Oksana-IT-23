PRAGMA table_info(trips);
PRAGMA table_info(drivers);

SELECT COUNT(*) FROM trips;
SELECT COUNT(duration_min) FROM trips;

SELECT COUNT(*) AS total_trips,
       COUNT(duration_min) AS with_duration,
       COUNT(*) - COUNT(duration_min) AS without_duration
FROM trips;

SELECT id, duration_min FROM trips ORDER BY duration_min LIMIT 5;

UPDATE trips SET duration_min = NULL WHERE id = 1;

SELECT COUNT(*) AS total_after,
       COUNT(duration_min) AS with_duration_after,
       COUNT(*) - COUNT(duration_min) AS without_duration_after
FROM trips;

SELECT id, duration_min FROM trips WHERE id = 1;

UPDATE trips SET duration_min = 480 WHERE id = 1;

SELECT SUM(distance_km)   AS total_km,
       AVG(distance_km)   AS avg_km,
       COUNT(distance_km) AS denom
FROM routes;

SELECT MIN(distance_km) AS shortest,
       MAX(distance_km) AS longest
FROM routes;

SELECT MIN(destination) AS first_destination,
       MAX(destination) AS last_destination
FROM routes;

SELECT MIN(trip_date) AS first_trip,
       MAX(trip_date) AS last_trip
FROM trips;

SELECT COUNT(*)               AS total_trips,
       COUNT(duration_min)    AS with_duration,
       COUNT(*) - COUNT(duration_min) AS without_duration,
       MIN(trip_date)         AS first_trip,
       MAX(trip_date)         AS last_trip
FROM trips;

SELECT MIN(distance_km) AS shortest,
       MAX(distance_km) AS longest,
       AVG(distance_km) AS avg_km,
       COUNT(*)         AS total_routes
FROM routes;

SELECT COUNT(*)            AS kyiv_trips,
       COUNT(t.duration_min) AS kyiv_with_duration
FROM trips t
JOIN routes r ON r.id = t.route_id
WHERE r.origin = 'Київ';

SELECT r.origin,
       COUNT(*)             AS trips_count,
       COUNT(t.duration_min) AS with_duration
FROM trips t
JOIN routes r ON r.id = t.route_id
GROUP BY r.origin;

SELECT COUNT(*) FROM trips;
SELECT COUNT(duration_min) FROM trips;
SELECT SUM(distance_km) AS total_km,
       AVG(distance_km) AS avg_km,
       COUNT(distance_km) AS denom
FROM routes;