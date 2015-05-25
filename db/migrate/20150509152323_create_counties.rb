class CreateCounties < ActiveRecord::Migration
  def change
    create_table :counties do |t|
      t.column :county_name, :string
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime

     
    end
  end
end
