CREATE TABLE IF NOT EXISTS user_relationship (
    created timestamp default now(),

    user_id int NOT NULL, -- the user who created the relationship (i.e. the user doing the following)
    reviewable_id int NOT NULL, -- the reviewable who is affected by the relationship (i.e. the user being followed)

    type int NOT NULL, -- enum: the type of relationship (like, dislike, following, etc...)

    CONSTRAINT following_primary_key PRIMARY KEY (user_id, reviewable_id),
    CONSTRAINT user_id_foreign_key FOREIGN KEY (user_id) REFERENCES user (id),
    CONSTRAINT reviewable_id_foreign_key FOREIGN KEY (reviewable_id) REFERENCES reviewable (id)
);