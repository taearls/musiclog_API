# user is a music student
class User < ActiveRecord::Base
	has_secure_password
	has_many :songs
	has_many :practicelogs
end