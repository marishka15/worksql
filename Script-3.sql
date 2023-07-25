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

create table if not EXISTS genre_executor(
	genre_executor_id SERIAL PRIMARY KEY,
	genre_id INTEGER not null references genre(genre_id),
	executor_id INTEGER not null references executor(executor_id)
);

create table if not EXISTS album_executor(
	album_executor_id SERIAL PRIMARY KEY,
	album_id INTEGER not null references album(album_id),
	executor_id INTEGER not null references executor(executor_id)
);

create table if not EXISTS track_collection(
	track_collection_id SERIAL PRIMARY KEY,
	track_id INTEGER not null references track(track_id),
	collection_id INTEGER not null references collection(collection_id)
);
