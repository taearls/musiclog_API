-- users data
INSERT INTO users(email, password_digest, name, school, grade, student_phone, text_student, parent_phone, text_parent, lesson_location, lesson_day, lesson_time, additional_info) VALUES ("jamesreeves13@aol.com", "james", "Fiona Reeves", "Wild Rose Elementary", "3rd Grade", "36W097 Indian mound road, stc, 60174", "123-345-6789", true, "(773)677-1866 Maureen, (773)425-8954 Jim", true, "Tuesday", "4:00 PM", "She loves her violin!");
INSERT INTO users(email, password_digest, name, school, grade, student_phone, text_student, parent_phone, text_parent, lesson_location, lesson_day, lesson_time, additional_info) VALUES ("erinslater73@gmail.com", "erin", "Lauren Slater", "Fox Ridge", "Grade 5", "2607 Turnberry Rd, 60174", "555-555-0123", false, "773.771.0135", true, "Wednesday", "4:00 PM", "He struggles paying attention.");
INSERT INTO users(email, password_digest, name, school, grade, student_phone, text_student, parent_phone, text_parent, lesson_location, lesson_day, lesson_time, additional_info) VALUES ("chen.anna@gmail.com", "tyler", "Tyler", "Norton Creek Elementary", "3rd Grade", "1940 Cool Creek Dr. St. Charles IL 60174", "111-222-333", false, "6303383395", true, "Wednesday", "5:30 PM", "Very motivated to learn.");

-- songs data
INSERT INTO songs(song_name, artist_name, notes, link_to_file, link_to_performance, user_id) VALUES ("Roar", "Katy Perry", "duet arranged for two violins", "https://drive.google.com/open?id=1Y_od1e2ocdDFLBRwfKUcFcnYE9H4hsvX", "https://www.youtube.com/watch?v=CevxZvSJLk8", 1);
INSERT INTO songs(song_name, artist_name, notes, link_to_file, link_to_performance, user_id) VALUES ("Radioactive", "Imagine Dragons", "duet arranged for two violins", "https://drive.google.com/open?id=19nYKWKNEqsiAkejijss_3TyLRAxUH30d", "https://www.youtube.com/watch?v=ktvTqknDobU", 2);
INSERT INTO songs(song_name, artist_name, notes, link_to_file, link_to_performance, user_id) VALUES ("G Major Scale", null, "exercises based on the G Major scale", "https://drive.google.com/open?id=1Bh4Af8DPACHEqHr2B0lqzW-KneCvhTHv", "https://www.youtube.com/watch?v=XNNCdpMFJR0", 3);

-- practicelogs data
INSERT INTO practicelogs(goals, time_practiced, date_practiced, song_name) VALUES ("want to be able to play the top part", "2 hours", "Tuesday", "Roar");
INSERT INTO practicelogs(goals, time_practiced, date_practiced, song_name) VALUES ("want to hit the high notes", "3 hours", "Monday", "Radioactive");
INSERT INTO practicelogs(goals, time_practiced, date_practiced, song_name) VALUES ("want to work on the arpeggios", "2 hours", "Wednesday", "G Major Scale");
