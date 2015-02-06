class ClinicInsertService < ActiveRecord::Base
  establish_connection "approve_#{Rails.env}"
  self.set_table_name "ClinicInsertService"
  self.primary_key = "dummy_insert_service_pk"
  belongs_to :clinic_insert, :foreign_key => "transc_id"
  #validates presence of several attributes
  validates :dummy_insert_service_pk, :presence => true
  validates :transc_id, :presence => true
  validates :service_abbr, :presence => true
  validates :update_status, :presence => true
end
