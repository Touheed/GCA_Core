class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.column :score_card_type_id, :bigint
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
      t.column :course_hole_id, :bigint
      t.column :score, :boolean
      t.column :putts, :boolean
      t.column :fairway_hits, :boolean
      t.column :status, :string
      t.column :score, :boolean
      t.column :putts, :boolean
      t.column :fairway_hits, :boolean
      t.column :created_by, :bigint
     t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
   end
  end
end
