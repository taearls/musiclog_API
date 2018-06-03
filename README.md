# SongTrack API
API I wrote for my final project, SongTrack, for GA's Web Development Immersive.

## How to Use the API

### GET ROUTES

#### Get Users

https://songtrack-api.herokuapp.com/users

#### Get Songs

https://songtrack-api.herokuapp.com/songs

#### Get Practice Logs

https://songtrack-api.herokuapp.com/practicelogs

#### Log Out

https://songtrack-api.herokuapp.com/logout

### SHOW ROUTES (returns only the logged in user's information)

#### Show Songs

https://songtrack-api.herokuapp.com/songs/:id

#### Show Practice Logs

https://songtrack-api.herokuapp.com/practicelogs/:id

### POST ROUTES

#### Log In

https://songtrack-api.herokuapp.com/login

#### Register

https://songtrack-api.herokuapp.com/register

#### Add Song

https://songtrack-api.herokuapp.com/songs

#### Add Practice Log

https://songtrack-api.herokuapp.com/practicelogs

### DELETE ROUTES

#### Delete User

https://songtrack-api.herokuapp.com/users/:id

#### Delete Song

https://songtrack-api.herokuapp.com/songs/:id

#### Delete Practice Log

https://songtrack-api.herokuapp.com/practicelogs/:id

## DATA TABLES

### User Table

- ID
- Email
- Password (encrypted with bcrypt)
- Name
- School
- Grade
- Student Phone
- Text Student?
- Parent Phone
- Text Parent?
- Lesson Location
- Lesson Day
- Lesson Time
- Additional Information

### Song Table

- ID
- Song Name
- Artist Name
- Notes
- Link to File
- Link to Performance
- User_ID

### Practice Log Table

- ID
- Songs Worked On
- Practice Goals
- Time Practiced
- Date Practiced
- User_ID
