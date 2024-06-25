CREATE TABLE IF NOT EXISTS app_user (
	id serial,
	email text NOT NULL,
    phone text,
	DOB timestamp,

	joined timestamp default now(),

	username text NOT NULL,
	password text,
	salt text,
	roles text NOT NULL,
	is_complete boolean default false,

	content json,
	settings json,
	preferences json,
    statistics json,
	-- TODO add info json object for localizable data ?

	CONSTRAINT app_user_primary_key PRIMARY KEY (id),
	CONSTRAINT app_user_username_unique UNIQUE(username),
	CONSTRAINT app_user_email_unique UNIQUE(email)
);