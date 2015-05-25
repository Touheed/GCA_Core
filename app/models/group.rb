class Group < ActiveRecord::Base
	 belongs_to :gca_user, :foreign_key => :group_owner
	 has_many :group_members
end
