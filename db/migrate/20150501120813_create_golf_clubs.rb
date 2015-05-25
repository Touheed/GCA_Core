class CreateGolfClubs < ActiveRecord::Migration
  def change
    create_table :golf_clubs do |t|
      t.column :club_name, :string
      t.column :city_id, :bigint
      t.column :county_id, :bigint
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
    end
  end
end
