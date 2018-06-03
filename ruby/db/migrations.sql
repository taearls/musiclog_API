DROP DATABASE IF EXISTS music_students;

CREATE DATABASE music_students;

\c music_students

CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	email VARCHAR(256),
	password_digest VARCHAR(256),
	name VARCHAR(128),
	school VARCHAR(128),
	grade VARCHAR(128),
	student_phone VARCHAR(256),
	text_student BOOLEAN,
	parent_phone VARCHAR(256),
	text_parent BOOLEAN,
	lesson_location VARCHAR(256),
	lesson_day VARCHAR(256),
	lesson_time VARCHAR(256),
	additional_info VARCHAR(256)
);

CREATE TABLE songs(
	id SERIAL PRIMARY KEY,
	song_name VARCHAR(128),
	artist_name VARCHAR(128),
	notes VARCHAR(256),
	link_to_file VARCHAR(256),
	link_to_performance VARCHAR(256),
	user_id INT REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE practicelogs(
	id SERIAL PRIMARY KEY,
	goals VARCHAR(256),
	time_practiced VARCHAR(128),
	date_practiced VARCHAR(128),
	song_name VARCHAR(128),
	user_id INT REFERENCES users(id) ON DELETE CASCADE
);
