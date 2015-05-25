class CreateFavouriteCourses < ActiveRecord::Migration
  def change
    create_table :favourite_courses do |t|
      t.column :golf_course_id, :bigint
      t.column :gca_user_id, :bigint
      t.column :created_by, :bigint
     t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
      
    end
  end
end
