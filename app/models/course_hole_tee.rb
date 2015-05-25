class CourseHoleTee < ActiveRecord::Base
	belongs_to :tee
	belongs_to :course_hole
end
