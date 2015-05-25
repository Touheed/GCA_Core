class GcaUser < ActiveRecord::Base
	has_many :invites
	has_many :user_roles
  	has_many :gca_roles, :through => :user_roles
  	has_many :round_groups
  	has_many :groups
  	has_one  :user_details
  	has_many :user_tournaments
  	has_many :players

end
