class Service < ActiveRecord::Base
  has_many :clinic_services
  has_many :clinics, through: :clinic_services
  validates :service_abbr, presence: true
  self.set_table_name "Service"
  self.primary_key = "service_abbr"
end
