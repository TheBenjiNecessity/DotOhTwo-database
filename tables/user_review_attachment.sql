CREATE TABLE IF NOT EXISTS user_review_attachment (
    created timestamp default now(),

    user_id int NOT NULL,
    review_id int NOT NULL,

    type int NOT NULL, -- enum: the type of attachment (like, dislike, etc...)

    CONSTRAINT user_review_attachment_primary_key PRIMARY KEY (user_id, review_id),
    CONSTRAINT user_foreign_key FOREIGN KEY (user_id) REFERENCES user (id),
    CONSTRAINT review_foreign_key FOREIGN KEY (review_id) REFERENCES review (id),
);