class GolfCourseFeature < ActiveRecord::Base
	belongs_to :golf_course
	belongs_to :course_hole
end
