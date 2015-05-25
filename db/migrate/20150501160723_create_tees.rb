class CreateTees < ActiveRecord::Migration
  def change
    create_table :tees do |t|
      t.column :description, :string
      t.column :color_code, :string
      t.column :created_by, :bigint
     t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime

      end
  end
end
