require 'sinatra/base'
require 'sinatra/activerecord'

# models
require './models/UserModel'
# require './models/StudentModel'
require './models/SongModel'
require './models/PracticeLogModel'

# controllers
require './controllers/ApplicationController'
require './controllers/UserController'
# require './controllers/StudentController'
require './controllers/SongController'
require './controllers/PracticeLogController'

# routes
map('/') {
	run ApplicationController
}
map('/users') {
	run UserController
}
# map('/students') {
# 	run StudentController
# }
map('/songs') {
	run SongController
}
map('/practicelogs') {
	run PracticeLogController
}