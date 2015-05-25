class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.column :gca_user_id, :bigint
      t.column :invite_email_id, :string
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime
      t.column :round_id, :bigint
      t.column :nick_name, :string
      t.column :status, :string
      t.column :player_id, :bigint
    end
  end
end
