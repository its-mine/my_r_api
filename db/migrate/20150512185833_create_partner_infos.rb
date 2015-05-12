class CreatePartnerInfos < ActiveRecord::Migration
  def change
    create_table :partner_infos do |t|
      t.string :partner_id
      t.string :partner_name
      t.integer :primary_contact_id
      t.integer :status
      t.integer :reliability_id
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
