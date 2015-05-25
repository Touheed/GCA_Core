class Leaderboard < ActiveRecord::Base
	belongs_to :course_hole
	belongs_to :user_tournament

end
