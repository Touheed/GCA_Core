class Round < ActiveRecord::Base
	belongs_to :score_card_type

	belongs_to :course_hole
	has_many :round_golf_courses
	has_many :score_cards
	has_many :round_groups
	has_many :invites
	has_many :round_golf_courses
	has_many :score_cards
	has_many :round_groups

end
