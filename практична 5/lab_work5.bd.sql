PRAGMA foreign_keys = OFF;

CREATE TABLE routes_new (
    id           INTEGER PRIMARY KEY,
    origin       TEXT NOT NULL DEFAULT 'Київ',
    destination  TEXT NOT NULL,
    distance_km  REAL CHECK (distance_km > 0 AND distance_km <= 10000),
    UNIQUE (origin, destination)
);

INSERT INTO routes_new SELECT * FROM routes;
DROP TABLE routes;
ALTER TABLE routes_new RENAME TO routes;

PRAGMA foreign_keys = ON;

SELECT sql FROM sqlite_master WHERE name = 'routes';
PRAGMA foreign_key_check;

INSERT INTO routes (origin, destination, distance_km)
VALUES ('Тест-C', 'Тест', -5);

INSERT INTO routes (origin, destination, distance_km)
VALUES ('Київ', 'Львів', 540);

INSERT INTO routes (destination, distance_km)
VALUES ('Тест-D', 100);

SELECT id, origin, destination FROM routes WHERE destination = 'Тест-D';

DELETE FROM routes WHERE destination = 'Тест-D';

INSERT INTO trips (driver_id, route_id, duration_min)
VALUES (1, 1, 60);
