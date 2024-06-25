CREATE TABLE IF NOT EXISTS app_user_relationship (
    created timestamp default now(),

    app_user_id int NOT NULL, -- the app_user who created the relationship (i.e. the app_user doing the following)
    reviewable_id int NOT NULL, -- the reviewable who is affected by the relationship (i.e. the app_user being followed)

    type int NOT NULL, -- enum: the type of relationship (like, dislike, following, etc...)

    CONSTRAINT following_primary_key PRIMARY KEY (app_user_id, reviewable_id),
    CONSTRAINT app_user_id_foreign_key FOREIGN KEY (app_user_id) REFERENCES app_user (id),
    CONSTRAINT reviewable_id_foreign_key FOREIGN KEY (reviewable_id) REFERENCES reviewable (id)
);