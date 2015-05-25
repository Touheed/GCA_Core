class CreateScoreCards < ActiveRecord::Migration
  def change
    create_table :score_cards do |t|
      t.column :round_id, :bigint
      t.column :course_hole_id, :bigint
      t.column :round_group_member_id, :bigint
      t.column :handicap_index, :numeric
      t.column :score, :numeric
      t.column :putts, :integer
      t.column :fairway_hits, :integer
      t.column :created_by, :bigint
     t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
      
    end
  end
end
