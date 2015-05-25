class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.column :gca_user_id, :bigint
      t.column :handicap, :decimal
      t.column :handicap_status, :string
      t.column :tee_id, :bigint
      t.column :score, :boolean
      t.column :putts, :boolean
      t.column :fairway_hits, :boolean
      t.column :created_by, :bigint
       t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
     
     
    end
  end
end
