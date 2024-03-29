ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  set_fixture_class :clinics => Clinic
  set_fixture_class :clinic_inserts => ClinicInsert
  set_fixture_class :clinic_services => ClinicService
  set_fixture_class :clinic_insert_hours => ClinicInsertHour
  set_fixture_class :clinic_insert_services => ClinicInsertService
  set_fixture_class :hours => Hours
  set_fixture_class :services => Service
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
