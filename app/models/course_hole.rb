class CourseHole < ActiveRecord::Base
	belongs_to :golf_course
	has_many :score_cards
	has_many :course_hole_tees
	has_many :leaderboards
	has_many :golf_course_features
	has_many :rounds

end
