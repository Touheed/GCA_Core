class Invite < ActiveRecord::Base
	belongs_to :gca_user
	belongs_to :player
	belongs_to :round
end
