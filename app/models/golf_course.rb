class GolfCourse < ActiveRecord::Base
	belongs_to :golf_club
	belongs_to :city
	belongs_to :state
	belongs_to :county
	has_many :favourite_courses
	has_many :round_golf_courses
	has_many :course_holes
	has_many :golf_club_tournament_courses
	has_many :golf_course_features
end
