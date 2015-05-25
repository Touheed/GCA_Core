class GcaRole < ActiveRecord::Base
	has_many :user_roles
  	has_many :gca_users, :through => :user_roles
end
