require 'sinatra/base'
require 'sinatra/activerecord'

# models
require './models/UserModel'
require './models/SongModel'
require './models/PracticeLogModel'

# controllers
require './controllers/ApplicationController'
require './controllers/UserController'
require './controllers/SongController'
require './controllers/PracticeLogController'

# routes
map('/') {
	run ApplicationController
}
map('/users') {
	run UserController
}
map('/songs') {
	run SongController
}
map('/practicelogs') {
	run PracticelogController
}