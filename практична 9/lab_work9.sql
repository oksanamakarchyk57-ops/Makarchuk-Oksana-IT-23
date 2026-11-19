SELECT route_id, COUNT(*) AS trips_count
FROM trips
GROUP BY route_id;

SELECT driver_id, COUNT(*) AS trips_count
FROM trips
GROUP BY driver_id;

SELECT r.id, r.origin, r.destination, COUNT(t.id) AS trips_count
FROM routes r
LEFT JOIN trips t ON t.route_id = r.id
GROUP BY r.id;

SELECT d.id, d.full_name, COUNT(t.id) AS trips_count
FROM drivers d
LEFT JOIN trips t ON t.driver_id = d.id
GROUP BY d.id;

SELECT r.id,
       r.origin,
       r.destination,
       COUNT(t.id)      AS trips_count,
       MIN(t.trip_date) AS first_trip,
       MAX(t.trip_date) AS last_trip
FROM routes r
LEFT JOIN trips t ON t.route_id = r.id
GROUP BY r.id;

SELECT d.id,
       d.full_name,
       COUNT(t.id)      AS trips_count,
       MIN(t.trip_date) AS first_trip,
       MAX(t.trip_date) AS last_trip
FROM drivers d
LEFT JOIN trips t ON t.driver_id = d.id
GROUP BY d.id;

SELECT r.origin,
       COUNT(t.id) AS trips_count,
       COUNT(DISTINCT t.route_id) AS distinct_routes
FROM trips t
JOIN routes r ON r.id = t.route_id
GROUP BY r.origin;

SELECT origin, COUNT(*) AS routes_count
FROM routes
GROUP BY origin;

SELECT strftime('%Y-%m', trip_date) AS month, COUNT(*) AS trips_count
FROM trips
GROUP BY strftime('%Y-%m', trip_date);

INSERT INTO trips (driver_id, route_id, trip_date, duration_min) VALUES
    (1, 3, '2026-10-15', 310),
    (4, 2, '2026-12-02', 430);
	
	SELECT t.route_id,
       r.origin,
       r.destination,
       COUNT(*) AS trips_count
FROM trips t
JOIN routes r ON r.id = t.route_id
GROUP BY t.route_id;

SELECT t.route_id,
       r.origin,
       r.destination,
       r.distance_km,
       COUNT(*) AS trips_count
FROM trips t
JOIN routes r ON r.id = t.route_id
GROUP BY t.route_id;