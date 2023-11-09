CREATE TABLE IF NOT EXISTS review_reply (
    comment text NOT NULL,
    created timestamp default now(),

    review_id int NOT NULL,
    app_user_id int NOT NULL,

    CONSTRAINT review_reply_primary_key PRIMARY KEY (review_id, app_user_id),
    CONSTRAINT review_reply_review_foreign_key FOREIGN KEY (review_id) REFERENCES review (id),
    CONSTRAINT review_reply_app_user_foreign_key FOREIGN KEY (app_user_id) REFERENCES app_user (id)
);