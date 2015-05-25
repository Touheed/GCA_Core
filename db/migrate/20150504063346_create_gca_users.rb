class CreateGcaUsers < ActiveRecord::Migration
  def change
    create_table :gca_users do |t|
      t.column :user_name, :string
      t.column :first_name, :string
      t.column :middle_name, :string
      t.column :last_name, :string
      t.column :cell_number, :string
      t.column :social_media_provider, :string
      t.column :social_media_id, :string
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
      t.column :realm, :string
      t.column :username, :string
      t.column :password, :string
      t.column :credentials, :string
      t.column :challenges, :string
      t.column :email, :string
      t.column :emailverified , :boolean
      t.column :verificationtoken, :string
      t.column :status, :string
      t.column :created, :datetime
      t.column :lastupdated, :datetime
      t.column :provider, :string
      t.column :nick_name, :string

   end
  end
end
