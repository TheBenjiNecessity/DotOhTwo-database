CREATE TABLE IF NOT EXISTS reviewable (
    id serial,
    type text NOT NULL,

    title text NOT NULL,
    description text,

    content json,
    info json,
    statistics json,

    CONSTRAINT reviewable_primary_key PRIMARY KEY (id)
);