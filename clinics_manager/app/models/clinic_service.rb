class ClinicService < ActiveRecord::Base
  belongs_to :clinic
  belongs_to :service, :foreign_key => "service_abbr"
  validates :service_abbr, :clinic_id, :dummy_service_pk, presence: true
  self.set_table_name "Clinic_Service"
  self.primary_key = "dummy_service_pk"
end
