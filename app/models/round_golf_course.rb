class RoundGolfCourse < ActiveRecord::Base
	belongs_to :round
	belongs_to :golf_course
end
