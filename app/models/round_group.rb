class RoundGroup < ActiveRecord::Base
	 belongs_to :gca_user, :foreign_key => :group_owner
	 belongs_to :round
end
