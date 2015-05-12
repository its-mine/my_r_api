class DomainHost < ActiveRecord::Base
  attr_accessible :created_by, :domain_name, :host_name, :partner_info_id, :status, :updated_by
end
