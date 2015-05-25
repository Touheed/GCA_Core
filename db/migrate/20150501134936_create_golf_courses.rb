class CreateGolfCourses < ActiveRecord::Migration
  def change
    create_table :golf_courses do |t|
      t.column :golf_club_id, :bigint
      t.column :course_name, :string
      t.column :course_rating, :decimal
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
      t.column :langitude, :decimal
      t.column :longitude, :decimal
      t.column :course_slope, :integer
      t.column :total_hole, :integer
      t.column :state_id, :bigint
      t.column :city_id, :bigint
      t.column :course_address, :string 
      t.column :street, :string
      t.column :zip, :integer
      t.column :county_id, :bigint
      t.column :phone, :text
      t.column :fax, :string
      t.column :url, :string
      t.column :architech, :string
      t.column :status, :string
      t.column :quest_policy, :string
      t.column :founded, :integer
     

    end
  end
end
