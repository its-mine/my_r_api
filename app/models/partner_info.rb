class PartnerInfo < ActiveRecord::Base
  attr_accessible :created_by, :partner_id, :partner_name, :primary_contact_id, :reliability_id, :status, :updated_by
end
