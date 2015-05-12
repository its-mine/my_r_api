class ContactInfo < ActiveRecord::Base
  attr_accessible :address_id, :contact_type, :created_by, :email_id, :first_name, :last_name, :phone_number, :updated_by
end
