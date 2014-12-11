require 'test_helper'

class ClinicTest < ActiveSupport::TestCase
  test "test clinic validate" do
    clinic1 = clinics(:clinic_one)
    clinic2 = clinics(:clinic_two)
    assert clinic1.save
    assert !clinic2.save
  end
end

