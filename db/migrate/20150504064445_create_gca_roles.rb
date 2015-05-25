class CreateGcaRoles < ActiveRecord::Migration
  def change
    create_table :gca_roles do |t|
       t.column :role_name, :string
      t.column :created_by, :bigint
     t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
    end
  end
end
