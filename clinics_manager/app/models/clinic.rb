class Clinic < ActiveRecord::Base
  has_many :clinic_services
  has_many :services, through: :clinic_services
  validates :clinic_id, :last_updated, :clinic_name, :street_addr1, :city,
            :state, :zipcode, presence: true
  self.set_table_name "Clinic"
  self.primary_key = "clinic_id"
end
