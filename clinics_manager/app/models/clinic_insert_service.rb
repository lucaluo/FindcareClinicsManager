class ClinicInsertService < ActiveRecord::Base
  validates :dummy_insert_service_pk, :transc_id, :service_abbr, :update_status, :presence => true
  establish_connection "approve_#{Rails.env}"
  self.set_table_name "ClinicInsertService"
  self.primary_key = "dummy_insert_service_pk"
end