CREATE TABLE IF NOT EXISTS app_user_review_attachment (
    created timestamp default now(),

    app_user_id int NOT NULL,
    review_id int NOT NULL,

    type int NOT NULL, -- enum: the type of attachment (like, dislike, etc...)

    CONSTRAINT app_user_review_attachment_primary_key PRIMARY KEY (app_user_id, review_id),
    CONSTRAINT app_user_foreign_key FOREIGN KEY (app_user_id) REFERENCES app_user (id),
    CONSTRAINT review_foreign_key FOREIGN KEY (review_id) REFERENCES review (id)
);