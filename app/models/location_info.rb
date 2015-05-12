class LocationInfo < ActiveRecord::Base
  attr_accessible :address_id, :contact_id, :created_by, :location_name, :partner_info_id, :status, :updated_by
end
