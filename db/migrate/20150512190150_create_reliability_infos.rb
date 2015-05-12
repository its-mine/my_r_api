class CreateReliabilityInfos < ActiveRecord::Migration
  def change
    create_table :reliability_infos do |t|
      t.string :description
      t.integer :star_rating
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
