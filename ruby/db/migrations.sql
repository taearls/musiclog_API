DROP DATABASE IF EXISTS music_students;

CREATE DATABASE music_students;

\c music_students

CREATE TABLE songs(
	id SERIAL PRIMARY KEY,
	song_name VARCHAR(128),
	artist_name VARCHAR(128),
	notes VARCHAR(256),
	link_to_file VARCHAR(256),
	link_to_performance VARCHAR(256),
);

CREATE TABLE practicelogs(
	id SERIAL PRIMARY KEY,
	goals VARCHAR(256),
	time_practiced VARCHAR(128),
	date_practiced DATE,
	song_name VARCHAR(128) REFERENCES songs(name) ON DELETE SET NULL
);

CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	username VARCHAR(128),
	password_digest VARCHAR(256),
	# only use all this other stuff below for registering
	name VARCHAR(128),
	school VARCHAR(128),
	grade INT,
	email VARCHAR(256),
	lesson_location VARCHAR(256),
	student_phone VARCHAR(256),
	text_student BOOLEAN,
	parent_phone VARCHAR(256),
	text_parent BOOLEAN,
	lesson_day VARCHAR(256),
	lesson_time VARCHAR(256),
	additional_info VARCHAR(256)
);
