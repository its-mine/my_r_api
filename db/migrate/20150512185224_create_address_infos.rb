class CreateAddressInfos < ActiveRecord::Migration
  def change
    create_table :address_infos do |t|
      t.string :address1
      t.string :address2
      t.string :state
      t.string :city
      t.string :zip
      t.string :validation_status
      t.integer :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
