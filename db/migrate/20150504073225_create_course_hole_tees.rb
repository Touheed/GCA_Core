class CreateCourseHoleTees < ActiveRecord::Migration
  def change
    create_table :course_hole_tees do |t|
      t.column :tee_id, :bigint
      t.column :course_hole_id, :bigint
      t.column :latitude, :numeric
      t.column :longitude, :numeric 
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime

    end
  end
end
