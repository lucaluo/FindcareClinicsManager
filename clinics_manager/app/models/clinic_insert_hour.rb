class ClinicInsertHour < ActiveRecord::Base
  establish_connection "approve_#{Rails.env}"
  self.set_table_name "ClinicInsertHour"
  self.primary_key = "dummy_insert_hour_pk"
  
  validates :transc_id, :presence => true
  validates :hour_type, :presence => true
  validates :update_status, :presence => true
  validates :dummy_insert_hour_pk, :presence => true
end
