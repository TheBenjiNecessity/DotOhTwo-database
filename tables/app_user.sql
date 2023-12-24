CREATE TABLE IF NOT EXISTS app_user (
	id serial,
	email text NOT NULL,
    phone text,
	DOB timestamp,
	
	joined timestamp default now(),

	username text NOT NULL,
	password text NOT NULL,
	salt text NOT NULL,
	roles text NOT NULL,

	content json,
	settings json,
	preferences json,
    statistics json,

	CONSTRAINT app_user_primary_key PRIMARY KEY (id),
	CONSTRAINT app_user_handle_unique UNIQUE(handle),
	CONSTRAINT app_user_email_unique UNIQUE(email)
);