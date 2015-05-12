class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.string :contact_type
      t.string :first_name
      t.string :last_name
      t.string :email_id
      t.string :phone_number
      t.string :address_id
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
