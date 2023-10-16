CREATE TABLE IF NOT EXISTS user_relationship (
    created timestamp default now(),

    affector_user_id int NOT NULL, -- the user who created the relationship (i.e. the user doing the blocking)
    affected_user_id int NOT NULL, -- the user who is affected by the relationship (i.e. the user being blocked)

    type int NOT NULL, -- enum: the type of relationship (following, blocking, muting)

    CONSTRAINT following_primary_key PRIMARY KEY (affector_user_id, affected_user_id),
    CONSTRAINT affector_user_id_foreign_key FOREIGN KEY (affector_user_id) REFERENCES app_user (id),
    CONSTRAINT affected_user_id_foreign_key FOREIGN KEY (affected_user_id) REFERENCES app_user (id)
);