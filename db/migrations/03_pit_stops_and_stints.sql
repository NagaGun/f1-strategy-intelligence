CREATE TABLE pit_stops (
    pit_id              NUMBER          GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    session_key         NUMBER          NOT NULL,
    driver_number       NUMBER          NOT NULL,
    lap_number          NUMBER          NOT NULL,
    stop_duration       NUMBER(8, 4),
    date_pit            TIMESTAMP,
    created_at          TIMESTAMP       DEFAULT SYSTIMESTAMP NOT NULL,

    CONSTRAINT fk_pits_session
        FOREIGN KEY (session_key)
        REFERENCES sessions(session_key),

    CONSTRAINT fk_pits_driver
        FOREIGN KEY (driver_number)
        REFERENCES drivers(driver_number),

    CONSTRAINT uq_pit
        UNIQUE (session_key, driver_number, lap_number)
);

CREATE TABLE tire_stints (
    stint_id            NUMBER          GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    session_key         NUMBER          NOT NULL,
    driver_number       NUMBER          NOT NULL,
    stint_number        NUMBER          NOT NULL,
    compound            VARCHAR2(20),
    lap_start           NUMBER          NOT NULL,
    lap_end             NUMBER,
    stint_length        NUMBER          GENERATED ALWAYS AS 
                            (lap_end - lap_start + 1) VIRTUAL,
    created_at          TIMESTAMP       DEFAULT SYSTIMESTAMP NOT NULL,

    CONSTRAINT fk_stints_session
        FOREIGN KEY (session_key)
        REFERENCES sessions(session_key),

    CONSTRAINT fk_stints_driver
        FOREIGN KEY (driver_number)
        REFERENCES drivers(driver_number),

    CONSTRAINT chk_compound CHECK (
        compound IN ('SOFT', 'MEDIUM', 'HARD', 
                     'INTERMEDIATE', 'WET', 'UNKNOWN')
    ),

    CONSTRAINT uq_stint
        UNIQUE (session_key, driver_number, stint_number)
);