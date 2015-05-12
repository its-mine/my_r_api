class FareInfo < ActiveRecord::Base
  attr_accessible :created_by, :fare_type, :total_fare, :updated_by
end
