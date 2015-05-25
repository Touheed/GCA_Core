class GolfClubTournamentCourse < ActiveRecord::Base
	 belongs_to :golf_course
	 belongs_to :golf_club_tournament
end
