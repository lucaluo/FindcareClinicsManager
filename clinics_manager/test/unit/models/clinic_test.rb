require 'test_helper'

class ClinicTest < ActiveSupport::TestCase
  test "should save clinic" do
    clinic = clinics(:clinic_one)
    assert clinic.save
  end
end
