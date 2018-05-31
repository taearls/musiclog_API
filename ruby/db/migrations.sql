DROP DATABASE IF EXISTS music_students;

CREATE DATABASE music_students;

\c music_students

CREATE TABLE students(
	id SERIAL PRIMARY KEY,
	name VARCHAR(128),
	age INT,
	notes VARCHAR(256),
	lesson_times VARCHAR(256)
);

CREATE TABLE songs(
	id SERIAL PRIMARY KEY,
	song_name VARCHAR(128),
	artist_name VARCHAR(128),
	notes VARCHAR(256),
	link_to_file VARCHAR(256),
	link_to_performance VARCHAR(256),
	student_id INT REFERENCES students(id) ON DELETE CASCADE
);

CREATE TABLE practicelogs(
	id SERIAL PRIMARY KEY,
	goals VARCHAR(256),
	time_practiced VARCHAR(128),
	date_practiced DATE,
	song_name VARCHAR(128) REFERENCES songs(name) ON DELETE SET NULL,
	student_id INT REFERENCES students(id) ON DELETE CASCADE
);

CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	username VARCHAR(128),
	password_digest VARCHAR(256),
	student_id INT REFERENCES students(id) ON DELETE CASCADE
);
