CREATE TABLE IF NOT EXISTS review (
	id serial,

    comment text,
    rating int NOT NULL,
    created timestamp default now(),

    content json,
    info json,

    app_user_id int NOT NULL,
    reviewable_id int NOT NULL,

	CONSTRAINT review_primary_key PRIMARY KEY (id),
    CONSTRAINT review_user_foreign_key FOREIGN KEY (app_user_id) REFERENCES app_user (id),
    CONSTRAINT review_reviewable_foreign_key FOREIGN KEY (reviewable_id) REFERENCES reviewable (id),

    UNIQUE (user_id, reviewable_id)
);