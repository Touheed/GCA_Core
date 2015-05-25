class CreateCourseHoles < ActiveRecord::Migration
  def change
    create_table :course_holes do |t|
      t.column :golf_course_id, :bigint
      t.column :par, :integer
      t.column :stroke_index, :numeric
      t.column :course_hole_order, :integer
      t.column :hole_latitude, :numeric
      t.column :hole_longitude, :numeric
      t.column :yardage, :integer
      t.column :bearing, :integer
      t.column :created_by, :bigint
     t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime

    end
  end
end
