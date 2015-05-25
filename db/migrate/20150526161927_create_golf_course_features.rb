class CreateGolfCourseFeatures < ActiveRecord::Migration
  def change
    create_table :golf_course_features do |t|
      t.column :hole_number, :integer
      t.column :feature_type, :string
      t.column :show_marker, :integer
      t.column :front_latitude, :decimal
      t.column :front_longitude, :decimal
      t.column :back_latitude, :decimal
      t.column :back_longitude, :decimal
      t.column :description, :string
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
      t.column :golf_course_id, :bigint
      t.column :course_hole_id, :bigint

    
    end
  end
end
