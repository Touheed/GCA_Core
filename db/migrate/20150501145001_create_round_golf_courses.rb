class CreateRoundGolfCourses < ActiveRecord::Migration
  def change
    create_table :round_golf_courses do |t|
      t.column :round_id, :bigint
      t.column :golf_course_id, :bigint
      t.column :created_by, :bigint
     t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
    end
  end
end
