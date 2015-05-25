class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.column :city_name, :string
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime

      
    end
  end
end
