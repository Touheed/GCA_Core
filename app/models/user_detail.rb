class UserDetail < ActiveRecord::Base
	belongs_to :gca_user
	belongs_to :tee
end

