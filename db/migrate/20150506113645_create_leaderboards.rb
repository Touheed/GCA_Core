class CreateLeaderboards < ActiveRecord::Migration
  def change
    create_table :leaderboards do |t|
      t.column :user_tournament_id, :bigint
      t.column :course_hole_id, :bigint
      t.column :score, :numeric
      t.column :putts, :integer
      t.column :fairway_hits, :integer
      t.column :handicap_index, :numeric
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime

    
    end
  end
end
