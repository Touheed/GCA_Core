class Player < ActiveRecord::Base

	belongs_to :gca_user
	belongs_to :tee
	has_many :round_group_members
	has_many :group_members
	has_many :invites
end
