class GolfClub < ActiveRecord::Base
	has_many :golf_courses
	has_many :golf_club_tournaments
	belongs_to :city
end
