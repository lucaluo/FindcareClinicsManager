class Clinic < ActiveRecord::Base
  self.set_table_name "Clinic"
  self.primary_key = "clinic_id"
  has_many :clinic_service
  has_many :service, :through=> :clinic_service
  validates :clinic_id, :last_updated, :clinic_name, :street_addr1, :city,
            :state, :zipcode, :presence=> true
end