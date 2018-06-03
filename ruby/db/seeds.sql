-- users data
-- email is 'james@james.com'
-- password is 'james'
INSERT INTO users (email, password_digest, name, school, grade, student_phone, text_student, parent_phone, text_parent, lesson_location, lesson_day, lesson_time, additional_info) VALUES ('james@james.com', '$2a$10$bZDm28Ho6U9kQ1xqZ8N/NuMlGOHPUKK3ApDYBYUSff/wykPJuJ1WK', 'Fiona', 'Wild Rose Elementary', '3rd Grade', '123-345-6789', true, '987-654-3210', true, '36 Indian mound, 60174', 'Tuesday', '4:00 PM', 'She loves her violin!');
-- email is 'erin@erin.com'
-- password is erin
INSERT INTO users (email, password_digest, name, school, grade, student_phone, text_student, parent_phone, text_parent, lesson_location, lesson_day, lesson_time, additional_info) VALUES ('erin@erin.com', '$2a$10$iuVnuMMOtif5Ax2qIDCfNuNQYqikA6Je.aQCivSi3AnI27gh5o0Fm', 'Lauren', 'Fox Ridge', 'Grade 5', '555-555-0123', false, '773-771-0135', true, '2607 Turnberry, 60174', 'Wednesday', '4:00 PM', 'She struggles paying attention.');
-- email is 'tyler'
-- password is 'tyler'
INSERT INTO users (email, password_digest, name, school, grade, student_phone, text_student, parent_phone, text_parent, lesson_location, lesson_day, lesson_time, additional_info) VALUES ('tyler', '$2a$10$2IRtJP2EN.4zV85EZcatce8he.DfcdK9EeDTiN6bI6KzQk4waW.WS', 'Tyler', 'Norton Creek Elementary', '3rd Grade', '111-222-333', false, '6303383395', true, '1940 Cool Drive, St. Charles IL 60174', 'Wednesday', '5:30 PM', 'Very motivated to learn.');

-- songs data
INSERT INTO songs (song_name, artist_name, notes, link_to_file, link_to_performance, user_id) VALUES ('Roar', 'Katy Perry', 'duet arranged for two violins', 'https://drive.google.com/open?id=1Y_od1e2ocdDFLBRwfKUcFcnYE9H4hsvX', 'https://www.youtube.com/watch?v=CevxZvSJLk8', 1);
INSERT INTO songs (song_name, artist_name, notes, link_to_file, link_to_performance, user_id) VALUES ('Radioactive', 'Imagine Dragons', 'duet arranged for two violins', 'https://drive.google.com/open?id=19nYKWKNEqsiAkejijss_3TyLRAxUH30d', 'https://www.youtube.com/watch?v=ktvTqknDobU', 2);
INSERT INTO songs (song_name, artist_name, notes, link_to_file, link_to_performance, user_id) VALUES ('G Major Scale', null, 'exercises based on the G Major scale', 'https://drive.google.com/open?id=1Bh4Af8DPACHEqHr2B0lqzW-KneCvhTHv', 'https://www.youtube.com/watch?v=XNNCdpMFJR0', 3);

-- practicelogs data
INSERT INTO practicelogs (goals, time_practiced, date_practiced, song_name, user_id) VALUES ('want to be able to play the top part', '2 hours', 'Tuesday', 'Roar', 1);
INSERT INTO practicelogs (goals, time_practiced, date_practiced, song_name, user_id) VALUES ('want to hit the high notes', '3 hours', 'Monday', 'Radioactive', 2);
INSERT INTO practicelogs (goals, time_practiced, date_practiced, song_name, user_id) VALUES ('want to work on the arpeggios', '2 hours', 'Wednesday', 'G Major Scale', 3);
