class Song < ActiveRecord::Base
	has_one :user
end