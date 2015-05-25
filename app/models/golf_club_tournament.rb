class GolfClubTournament < ActiveRecord::Base
	belongs_to :golf_club
	has_many :golf_club_tournament_courses
	has_many :user_tournaments
end
