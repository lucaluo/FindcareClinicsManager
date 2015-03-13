class Hours < ActiveRecord::Base
  self.set_table_name "Hours"
  self.primary_key = "clinic_id"

  validates :clinic_id, :presence => true
end