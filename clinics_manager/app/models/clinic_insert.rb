class ClinicInsert < ActiveRecord::Base
  establish_connection "approve_#{Rails.env}"
  self.set_table_name "ClinicInsert"
  self.primary_key = "transc_id"
end
