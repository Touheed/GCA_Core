class CreateGolfClubTournaments < ActiveRecord::Migration
  def change
    create_table :golf_club_tournaments do |t|
      t.column :golf_club_id, :bigint
      t.column :name, :string
      t.column :city, :string
      t.column :locality, :string
      t.column :title, :string
      t.column :description, :string
      t.column :status, :string
      t.column :starting_hole, :string
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime

    end
  end
end
