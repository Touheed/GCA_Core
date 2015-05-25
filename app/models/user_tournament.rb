class UserTournament < ActiveRecord::Base
	has_many :leaderboards
	belongs_to :gca_user
	belongs_to :golf_club_tournament
end
