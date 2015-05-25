class Tee < ActiveRecord::Base
		has_one  :user_detail
		has_many :course_hole_tees
		has_many :players
end
