class ScoreCard < ActiveRecord::Base
	belongs_to :round
	belongs_to :course_hole
	belongs_to :round_group_member
end
