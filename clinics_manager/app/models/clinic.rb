class Clinic < ActiveRecord::Base
  self.set_table_name "Clinic"
  self.primary_key = "clinic_id"
end
