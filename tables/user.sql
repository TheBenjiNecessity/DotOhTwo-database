CREATE TABLE IF NOT EXISTS user (
	id serial,
	email text NOT NULL,
    phone text,
	DOB timestamp,
	
	joined timestamp default now(),

	handle text NOT NULL,
	password text NOT NULL,
	salt text NOT NULL,

	content json,
	settings json,
	preferences json,
    statistics json,

	CONSTRAINT user_primary_key PRIMARY KEY (id),
	CONSTRAINT user_handle_unique UNIQUE(handle),
	CONSTRAINT user_email_unique UNIQUE(email)
);