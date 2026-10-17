CREATE TABLE IF NOT EXISTS raw_air_quality (
    location_id       INTEGER          NOT NULL,
    location_name     TEXT,
    sensor_id         INTEGER          NOT NULL,
    parameter         TEXT             NOT NULL,
    unit              TEXT,
    value             DOUBLE PRECISION NOT NULL,
    measured_at_utc   TIMESTAMPTZ      NOT NULL,
    loaded_at         TIMESTAMPTZ      NOT NULL DEFAULT NOW(),
    PRIMARY KEY (sensor_id, measured_at_utc)
);
