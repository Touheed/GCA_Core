class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.column :gca_user_id, :bigint
      t.column :gca_role_id, :bigint
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
 
    end
  end
end
