class CreateSessionInfos < ActiveRecord::Migration
  def change
    create_table :session_infos do |t|
      t.string :uid
      t.integer :account_info_id
      t.integer :status
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
