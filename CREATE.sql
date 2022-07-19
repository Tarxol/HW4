CREATE TABLE IF NOT EXISTS artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) UNIQUE NOT NULL	
);
CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,	
	title VARCHAR(100) UNIQUE NOT NULL,
	year INTEGER CHECK(year > 1500 AND year <= 2022) 
);
CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES album(id),
	title VARCHAR(100) UNIQUE NOT NULL,
	duration INTEGER NOT NULL CHECK(duration > 0)
	
);
CREATE TABLE IF NOT EXISTS genre(
	id SERIAL PRIMARY KEY,	
	title VARCHAR(40) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS collection (
	id SERIAL PRIMARY KEY,	
	title VARCHAR(100) UNIQUE NOT NULL,
	year INTEGER CHECK(year > 1500 AND year <= 2022) 
);
CREATE TABLE IF NOT EXISTS artist_genre(
	artist_id INTEGER REFERENCES artist(id),	
	genre_id INTEGER REFERENCES genre(id),
	CONSTRAINT artist_genre PRIMARY KEY (artist_id, genre_id) 
);
CREATE TABLE IF NOT EXISTS artist_album(
	artist_id INTEGER REFERENCES artist(id),	
	album_id INTEGER REFERENCES album(id),
	CONSTRAINT artist_album PRIMARY KEY (artist_id, album_id) 
);
CREATE TABLE IF NOT EXISTS collection_track(
	collection_id INTEGER REFERENCES collection(id),	
	track_id INTEGER REFERENCES track(id),
	CONSTRAINT collection_track PRIMARY KEY (collection_id, track_id) 
);