class CreateFareInfos < ActiveRecord::Migration
  def change
    create_table :fare_infos do |t|
      t.string :fare_type
      t.integer :total_fare
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
