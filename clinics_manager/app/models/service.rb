class Service < ActiveRecord::Base
  self.set_table_name "Service"
  self.primary_key = "service_abbr"
  has_many :clinic_service
  has_many :clinic, :through=> :clinic_service
  validates :service_abbr, :presence=> true
end