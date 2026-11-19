SELECT drivers.full_name, routes.origin, routes.destination,
       trips.trip_date, trips.duration_min
FROM trips
JOIN drivers ON trips.driver_id = drivers.id
JOIN routes  ON trips.route_id  = routes.id
ORDER BY trips.trip_date;

SELECT routes.id, routes.origin, routes.destination
FROM routes
LEFT JOIN trips ON trips.route_id = routes.id
WHERE trips.id IS NULL;

SELECT drivers.id, drivers.full_name
FROM drivers
LEFT JOIN trips ON trips.driver_id = drivers.id
WHERE trips.id IS NULL;

INSERT INTO routes (origin, destination, distance_km)
VALUES ('Київ', 'Чернівці', 520.0);

SELECT routes.id, routes.origin, routes.destination
FROM routes
LEFT JOIN trips ON trips.route_id = routes.id
WHERE trips.id IS NULL;

SELECT COUNT(*) FROM drivers;
SELECT COUNT(*) FROM routes;
SELECT COUNT(*) FROM drivers, routes;

SELECT id, origin, destination FROM routes ORDER BY id;

INSERT INTO routes (origin, destination, distance_km) VALUES
    ('Київ', 'Житомир', 140.0),
    ('Київ', 'Полтава', 340.0),
    ('Київ', 'Вінниця', 260.0),
    ('Київ', 'Запоріжжя', 560.0),
    ('Львів', 'Івано-Франківськ', 135.0),
    ('Львів', 'Луцьк', 150.0),
    ('Харків', 'Суми', 185.0),
    ('Одеса', 'Херсон', 190.0),
    ('Дніпро', 'Запоріжжя', 85.0),
    ('Вінниця', 'Хмельницький', 120.0),
    ('Полтава', 'Суми', 175.0),
    ('Чернівці', 'Ужгород', 330.0);

SELECT COUNT(*) FROM routes;

SELECT routes.id, routes.origin, routes.destination
FROM routes
LEFT JOIN trips ON trips.route_id = routes.id
WHERE trips.id IS NULL;