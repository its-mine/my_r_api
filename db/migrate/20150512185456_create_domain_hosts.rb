class CreateDomainHosts < ActiveRecord::Migration
  def change
    create_table :domain_hosts do |t|
      t.integer :partner_info_id
      t.string :host_name
      t.string :domain_name
      t.string :status
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
