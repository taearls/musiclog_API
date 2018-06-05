require 'sinatra/base'
require 'sinatra/activerecord'

# models
require './models/UserModel'
require './models/SongModel'
require './models/PracticelogModel'

# controllers
require './controllers/ApplicationController'
require './controllers/UserController'
require './controllers/SongController'
require './controllers/PracticelogController'

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