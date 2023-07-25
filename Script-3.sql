create table if not EXISTS genre(
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(60)not null
);

create table if not EXISTS executor(
	executor_id SERIAL PRIMARY KEY,
	name VARCHAR(60)not null
);

create table if not EXISTS album(
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(20)not null,
	year_of_issue DATE not null
);

create table if not EXISTS track(
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(20)not null,
	duration TIMESTAMP,
	album_id INTEGER not null references album(album_id)
);

create table if not EXISTS collection(
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(20)not null,
	year_of_issue DATE not null
);
