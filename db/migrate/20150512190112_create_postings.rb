class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.integer :source_geo
      t.integer :destination_geo
      t.datetime :travel_date_time
      t.integer :travel_date_time_utc
      t.integer :available_seats
      t.integer :fare_id
      t.integer :contact_id
      t.integer :status
      t.string :city
      t.string :state
      t.string :pincode
      t.string :from_place_tag1
      t.string :from_place_tag2
      t.string :from_place_tag3
      t.string :to_place_tag1
      t.string :to_place_tag2
      t.string :to_place_tag3
      t.integer :number_of_routes
      t.string :is_spam
      t.integer :reliability_id
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
