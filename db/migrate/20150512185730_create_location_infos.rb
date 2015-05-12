class CreateLocationInfos < ActiveRecord::Migration
  def change
    create_table :location_infos do |t|
      t.integer :partner_info_id
      t.integer :contact_id
      t.string :location_name
      t.integer :address_id
      t.integer :status
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
