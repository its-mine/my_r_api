class CreateAccountInfos < ActiveRecord::Migration
  def change
    create_table :account_infos do |t|
      t.string :email_id
      t.string :password
      t.string :passphrase
      t.integer :partner_info_id
      t.string :status
      t.string :session_status
      t.integer :reliability_id
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
