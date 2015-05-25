class CreateUserTournaments < ActiveRecord::Migration
  def change
    create_table :user_tournaments do |t|
      t.column :gca_user_id, :bigint
      t.column :golf_club_tournament_id, :bigint
      t.column :authentication_token, :text
      t.column :status, :string
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
      t.column :status, :string
  
    end
  end
end
