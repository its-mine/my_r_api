class CreateRouteViaInfos < ActiveRecord::Migration
  def change
    create_table :route_via_infos do |t|
      t.integer :postings_id
      t.string :route_via
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
