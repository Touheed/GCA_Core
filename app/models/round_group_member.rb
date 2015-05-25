class RoundGroupMember < ActiveRecord::Base
	belongs_to :player
	has_many :score_cards
end
