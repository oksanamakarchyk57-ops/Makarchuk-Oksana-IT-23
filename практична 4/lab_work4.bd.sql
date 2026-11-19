PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS trips;


CREATE TABLE trips (
    id            INTEGER PRIMARY KEY,
    driver_id     INTEGER NOT NULL,
    route_id      INTEGER,
    trip_date     TEXT NOT NULL,
    duration_min  INTEGER,
    FOREIGN KEY (driver_id) REFERENCES drivers (id) ON DELETE RESTRICT,
    FOREIGN KEY (route_id)  REFERENCES routes (id)  ON DELETE SET NULL
);


INSERT INTO trips (driver_id, route_id, trip_date, duration_min) VALUES
    (1, 1, '2026-11-01', 480),
    (1, 2, '2026-11-03', 420),
    (2, 5, '2026-11-02', 120),
    (3, 3, '2026-11-04', 300),
    (3, 1, '2026-11-06', 500),
    (4, 4, '2026-11-05', 240),
    (5, 5, '2026-11-07', 130),
    (6, 6, '2026-11-08', 460),
    (6, 2, '2026-11-10', 410),
    (2, 4, '2026-11-12', 230);