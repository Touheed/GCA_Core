class CreateRoundGroupMembers < ActiveRecord::Migration
  def change
    create_table :round_group_members do |t|
      t.column :player_id, :bigint
      t.column :round_group_id, :bigint
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime

      
    end
  end
end
