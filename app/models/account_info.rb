class AccountInfo < ActiveRecord::Base
  attr_accessible :created_by, :email_id, :partner_info_id, :passphrase, :password, :reliability_id, :session_status, :status, :updated_by
end
