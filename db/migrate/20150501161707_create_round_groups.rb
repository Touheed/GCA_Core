class CreateRoundGroups < ActiveRecord::Migration
  def change
    create_table :round_groups do |t|
      t.column :round_id, :bigint
      t.column :group_name, :string
      t.column :group_type, :string
      t.column :group_owner, :bigint
      t.column :created_by, :bigint
       t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
    
    end
  end
end
