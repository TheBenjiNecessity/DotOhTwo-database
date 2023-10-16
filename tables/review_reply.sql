CREATE TABLE IF NOT EXISTS review_reply (
    comment text NOT NULL,
    created timestamp default now(),

    review_id int NOT NULL,
    user_id int NOT NULL,

    CONSTRAINT review_reply_primary_key PRIMARY KEY (review_id, user_id),
    CONSTRAINT review_reply_review_foreign_key FOREIGN KEY (review_id) REFERENCES review (id),
    CONSTRAINT review_reply_user_foreign_key FOREIGN KEY (user_id) REFERENCES user (id)
);