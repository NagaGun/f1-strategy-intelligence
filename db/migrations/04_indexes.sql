-- Most common query pattern: "give me all laps for a session"
CREATE INDEX idx_laps_session
    ON lap_times(session_key);

-- Second most common: "give me all laps for one driver in a session"
CREATE INDEX idx_laps_driver_session
    ON lap_times(driver_number, session_key);

-- Pit stop lookups by session
CREATE INDEX idx_pits_session
    ON pit_stops(session_key);

-- Tire stint lookups by session + driver
CREATE INDEX idx_stints_session_driver
    ON tire_stints(session_key, driver_number);