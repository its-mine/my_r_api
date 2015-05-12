class Posting < ActiveRecord::Base
  attr_accessible :available_seats, :city, :contact_id, :created_by, :destination_geo, :fare_id, :from_place_tag1, :from_place_tag2, :from_place_tag3, :is_spam, :number_of_routes, :pincode, :reliability_id, :source_geo, :state, :status, :to_place_tag1, :to_place_tag2, :to_place_tag3, :travel_date_time, :travel_date_time_utc, :updated_by
end
