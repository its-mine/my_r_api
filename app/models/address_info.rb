class AddressInfo < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :created_by, :state, :updated_by, :validation_status, :zip
end
