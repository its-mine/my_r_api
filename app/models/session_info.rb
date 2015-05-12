class SessionInfo < ActiveRecord::Base
  attr_accessible :account_info_id, :created_by, :status, :uid, :updated_by
end
