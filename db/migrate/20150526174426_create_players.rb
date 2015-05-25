class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.column :gca_user_id, :bigint
      t.column :handicap, :decimal
      t.column :tee_id, :bigint
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
      t.column :score, :boolean
      t.column :putts, :boolean
      t.column :fairway_hits, :boolean
      t.column :handicap_status, :bigint
      t.column :status, :string
      t.column :nick_name, :string

    end
  end
end
