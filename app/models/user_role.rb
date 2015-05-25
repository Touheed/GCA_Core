class UserRole < ActiveRecord::Base
	belongs_to :gca_user
    belongs_to :gca_role
end
