class ClinicInsert < ActiveRecord::Base
  establish_connection "approve_#{Rails.env}"
  self.set_table_name "ClinicInsert"
  self.primary_key = "transc_id"
  validates :transc_id, :presence => true
  validates :user_id, :presence => true
  validates :approve, :presence => true, :inclusion  => {:in => %w(Y N)}
  validates :update_status, :presence => true, :inclusion  => {:in => %w(ADD DELETE UPDATE)}
  validates :last_updated, :presence => true
  validates :clinic_name, :presence => true
  validates :street_addr1, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zipcode, :presence => true
  validates :fqhc, :inclusion  => {:in => %w(Y N)}
  validates :no_cost, :inclusion  => {:in => %w(Y N)}
  validates :low_cost, :inclusion  => {:in => %w(Y N)}
  validates :sliding_scale, :inclusion  => {:in => %w(Y N)}
  validates :uninsured_only, :inclusion  => {:in => %w(Y N)}
  validates :medicare, :inclusion  => {:in => %w(Y N)}
  validates :medicaid, :inclusion  => {:in => %w(Y N)}
  validates :CHIP, :inclusion  => {:in => %w(Y N)}
  validates :private, :inclusion  => {:in => %w(Y N)}
  validates :payment_call_clinic, :inclusion  => {:in => %w(Y N)}
end


