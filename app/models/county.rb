class County < ActiveRecord::Base
	has_many :golf_clubs
	has_many :golf_courses
end
